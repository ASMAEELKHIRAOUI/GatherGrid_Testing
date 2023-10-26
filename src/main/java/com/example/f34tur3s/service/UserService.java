package com.example.f34tur3s.service;


import com.example.f34tur3s.domain.User;
import com.example.f34tur3s.repository.UserRepository;
import org.mindrot.jbcrypt.BCrypt;

import java.util.NoSuchElementException;
import java.util.Optional;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Stream;

public class UserService {
    final UserRepository userRepository = new UserRepository();

    public static boolean isValid(String email)
    {
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\."+
                "[a-zA-Z0-9_+&*-]+)*@" +
                "(?:[a-zA-Z0-9-]+\\.)+[a-z" +
                "A-Z]{2,7}$";

        Pattern pat = Pattern.compile(emailRegex);
        if (email == null){
            return false;
        }
        return pat.matcher(email).matches();
    }

    public void register(User user) {
        if (!user.getUsername().isEmpty() && user.getUsername() != null
                && !user.getFirstName().isEmpty() && user.getFirstName() != null
                && !user.getLastName().isEmpty() && user.getLastName() != null
                && isValid(user.getEmail())
                && !user.getPassword().isEmpty() && user.getEmail() != null
        )
        {
            Stream<User> userStream=userRepository.findByEmail(user.getEmail());
            if(userStream.findFirst().isEmpty()){
                user.setPassword(hashPassword(user.getPassword()));
                userRepository.save(user);
            }else{
                throw new UserAlreadyExistsException("this user already exists") ;
            }

        }else{
            throw new IllegalArgumentException("Invalid data");
        }

    }

    public Optional<User> login(String email, String password) {
        Stream<User> userStream=userRepository.findByEmail(email);
        Optional<User> userOptional=userStream.findFirst();
        if(!userOptional.isEmpty()){
            if(BCrypt.checkpw(password, userOptional.get().getPassword())) {
                return userOptional;
            }
        }
        return userOptional;

    }

    private String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }
}


