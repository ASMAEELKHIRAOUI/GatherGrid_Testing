<%--Head--%>
<%@ include file="../components/includes/static/head.jsp"%>

<!-- B Header -->
<jsp:include page="../components/includes/static/header.jsp"></jsp:include>
<!-- E Header -->

<%--B Content Dynamic--%>
<!-- B Post Event -->
<section class="py-10 font-poppins dark:bg-primary-100">
    <div class="max-w-6xl px-4 mx-auto">
        <div class="flex flex-wrap mb-24 -mx-4">
            <!-- left side -->
            <div class="w-full px-4 mb-8 md:w-1/2 md:mb-0">
                <!-- picture -->
                <div class="">
                    <img class="object-contain w-full"
                         src="https://flowbite.s3.amazonaws.com/blocks/marketing-ui/avatars/bonnie-green.png" alt="">
                </div>

                <!-- About this event & Comment Users-->
                <article
                        class="mx-auto w-full mt-9 max-w-2xl format format-sm sm:format-base lg:format-lg format-blue dark:format-invert">
                    <h2>About this event</h2>
                    <p>
                        First of all you need to understand how Flowbite works. This library
                        is not another framework. Rather, it is a set of components based on
                        Tailwind CSS that you can just copy-paste from the documentation.
                    </p>
                    <p>
                        You can check out the
                        <a href="https://flowbite.com/docs/getting-started/quickstart/">quickstart guide</a>
                        to explore the elements by including the CDN files into your
                        project. But if you want to build a project with Flowbite I
                        recommend you to follow the build tools steps so that you can purge
                        and minify the generated CSS.
                    </p>

                    <!-- Comment -->
                    <section class="not-format">
                        <div class="flex justify-between items-center mb-6">
                            <h2 class="text-lg lg:text-2xl font-bold text-gray-900 dark:text-white">
                                Discussion (20)
                            </h2>
                        </div>
                        <form class="mb-6" action="#">
                            <div
                                    class="py-2 px-4 mb-4 bg-white rounded-lg rounded-t-lg border border-gray-200 dark:bg-primary-100 dark:border-primary-50">
                                <label for="comment" class="sr-only">Your comment</label>
                                <textarea id="comment" rows="6"
                                          class="px-0 w-full text-sm text-gray-900 border-0 focus:ring-0 dark:text-white dark:placeholder-gray-400 dark:bg-primary-100 outline-none"
                                          placeholder="Write a comment..." required></textarea>
                            </div>
                            <button type="submit"
                                    class="inline-flex items-center py-2.5 px-4 text-xs font-medium text-center rounded-lg text-white bg-second-100 border-4 border-second-100 hover:bg-transparent ease-linear transition delay-400">
                                Post comment
                            </button>
                        </form>
                        <article class="p-6 mb-6 text-base bg-white rounded-lg dark:bg-primary-100 border dark:border-primary-50">
                            <footer class="flex justify-between items-center mb-2">
                                <div class="flex items-center">
                                    <p
                                            class="inline-flex items-center mr-3 font-semibold text-sm text-gray-900 dark:text-white">
                                        <img class="mr-2 w-6 h-6 rounded-full"
                                             src="https://flowbite.com/docs/images/people/profile-picture-2.jpg"
                                             alt="Michael Gough" />Michael Gough
                                    </p>
                                    <p class="text-sm text-gray-600 dark:text-gray-400">
                                        <time pubdate datetime="2022-02-08" title="February 8th, 2022">Feb. 8,
                                            2022</time>
                                    </p>
                                </div>
                                <div class="flex items-center">
                                    <div class="flex flex-wrap items-center">
                                        <ul class="flex mr-2 lg:mb-0">
                                            <li>
                                                <a href="#">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                         fill="currentColor"
                                                         class="w-4 mr-1 text-red-500 dark:text-gray-400 bi bi-star "
                                                         viewBox="0 0 16 16">
                                                        <path
                                                                d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z">
                                                        </path>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                         fill="currentColor"
                                                         class="w-4 mr-1 text-red-500 dark:text-gray-400 bi bi-star "
                                                         viewBox="0 0 16 16">
                                                        <path
                                                                d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z">
                                                        </path>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                         fill="currentColor"
                                                         class="w-4 mr-1 text-red-500 dark:text-gray-400 bi bi-star "
                                                         viewBox="0 0 16 16">
                                                        <path
                                                                d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z">
                                                        </path>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                         fill="currentColor"
                                                         class="w-4 mr-1 text-red-500 dark:text-gray-400 bi bi-star"
                                                         viewBox="0 0 16 16">
                                                        <path
                                                                d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z">
                                                        </path>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                         fill="currentColor"
                                                         class="w-4 mr-1 text-red-500 dark:text-gray-400 bi bi-star"
                                                         viewBox="0 0 16 16">
                                                        <path
                                                                d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z">
                                                        </path>
                                                    </svg>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>

                                    <button id="dropdownComment1Button" data-dropdown-toggle="dropdownComment1"
                                            class="inline-flex items-center p-1 text-sm font-medium text-center rounded-lg focus:outline-none dark:text-gray-400 dark:bg-second-100"
                                            type="button">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 256 256"><path fill="white" d="M144 128a16 16 0 1 1-16-16a16 16 0 0 1 16 16Zm-84-16a16 16 0 1 0 16 16a16 16 0 0 0-16-16Zm136 0a16 16 0 1 0 16 16a16 16 0 0 0-16-16Z"/></svg>
                                        <span class="sr-only">Comment settings</span>
                                    </button>
                                </div>

                                <!-- Dropdown menu -->
                                <div id="dropdownComment1"
                                     class="hidden z-10 w-36 bg-white rounded divide-y shadow dark:bg-primary-100 border border-primary-50 dark:divide-primary-50">
                                    <ul class="py-1 text-sm text-gray-700 dark:text-gray-200"
                                        aria-labelledby="dropdownMenuIconHorizontalButton">
                                        <li>
                                            <a href="#"
                                               class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-second-100 dark:hover:text-white">Edit</a>
                                        </li>
                                        <li>
                                            <a href="#"
                                               class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-second-100 dark:hover:text-white">Remove</a>
                                        </li>
                                        <li>
                                            <a href="#"
                                               class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-second-100 dark:hover:text-white">Report</a>
                                        </li>
                                    </ul>
                                </div>
                            </footer>
                            <p>
                                Very straight-to-point article. Really worth time reading. Thank
                                you! But tools are just the instruments for the UX designers.
                                The knowledge of the design tools are as important as the
                                creation of the design strategy.
                            </p>
                            <div class="flex items-center mt-4 space-x-4">
                                <button type="button"
                                        class="flex items-center font-medium text-sm text-gray-500 hover:underline dark:text-gray-400">
                                    <svg class="mr-1.5 w-3 h-3" aria-hidden="true"
                                         xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 18">
                                        <path
                                                d="M18 0H2a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h2v4a1 1 0 0 0 1.707.707L10.414 13H18a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2Zm-5 4h2a1 1 0 1 1 0 2h-2a1 1 0 1 1 0-2ZM5 4h5a1 1 0 1 1 0 2H5a1 1 0 0 1 0-2Zm2 5H5a1 1 0 0 1 0-2h2a1 1 0 0 1 0 2Zm9 0h-6a1 1 0 0 1 0-2h6a1 1 0 1 1 0 2Z" />
                                    </svg>
                                    Reply
                                </button>
                            </div>
                        </article>
                        <article class="p-6 mb-6 text-base bg-white rounded-lg dark:bg-primary-100 border dark:border-primary-50">
                            <footer class="flex justify-between items-center mb-2">
                                <div class="flex items-center">
                                    <p
                                            class="inline-flex items-center mr-3 font-semibold text-sm text-gray-900 dark:text-white">
                                        <img class="mr-2 w-6 h-6 rounded-full"
                                             src="https://flowbite.com/docs/images/people/profile-picture-2.jpg"
                                             alt="Michael Gough" />Michael Gough
                                    </p>
                                    <p class="text-sm text-gray-600 dark:text-gray-400">
                                        <time pubdate datetime="2022-02-08" title="February 8th, 2022">Feb. 8,
                                            2022</time>
                                    </p>
                                </div>
                                <div class="flex items-center">
                                    <div class="flex flex-wrap items-center">
                                        <ul class="flex mr-2 lg:mb-0">
                                            <li>
                                                <a href="#">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                         fill="currentColor"
                                                         class="w-4 mr-1 text-red-500 dark:text-gray-400 bi bi-star "
                                                         viewBox="0 0 16 16">
                                                        <path
                                                                d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z">
                                                        </path>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                         fill="currentColor"
                                                         class="w-4 mr-1 text-red-500 dark:text-gray-400 bi bi-star "
                                                         viewBox="0 0 16 16">
                                                        <path
                                                                d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z">
                                                        </path>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                         fill="currentColor"
                                                         class="w-4 mr-1 text-red-500 dark:text-gray-400 bi bi-star "
                                                         viewBox="0 0 16 16">
                                                        <path
                                                                d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z">
                                                        </path>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                         fill="currentColor"
                                                         class="w-4 mr-1 text-red-500 dark:text-gray-400 bi bi-star"
                                                         viewBox="0 0 16 16">
                                                        <path
                                                                d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z">
                                                        </path>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                         fill="currentColor"
                                                         class="w-4 mr-1 text-red-500 dark:text-gray-400 bi bi-star"
                                                         viewBox="0 0 16 16">
                                                        <path
                                                                d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z">
                                                        </path>
                                                    </svg>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>

                                    <button id="dropdownComment1Button" data-dropdown-toggle="dropdownComment1"
                                            class="inline-flex items-center p-1 text-sm font-medium text-center rounded-lg focus:outline-none dark:text-gray-400 dark:bg-second-100"
                                            type="button">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 256 256"><path fill="white" d="M144 128a16 16 0 1 1-16-16a16 16 0 0 1 16 16Zm-84-16a16 16 0 1 0 16 16a16 16 0 0 0-16-16Zm136 0a16 16 0 1 0 16 16a16 16 0 0 0-16-16Z"/></svg>
                                        <span class="sr-only">Comment settings</span>
                                    </button>
                                </div>

                                <!-- Dropdown menu -->
                                <div id="dropdownComment1"
                                     class="hidden z-10 w-36 bg-white rounded divide-y shadow dark:bg-primary-100 border border-primary-50 dark:divide-primary-50">
                                    <ul class="py-1 text-sm text-gray-700 dark:text-gray-200"
                                        aria-labelledby="dropdownMenuIconHorizontalButton">
                                        <li>
                                            <a href="#"
                                               class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-second-100 dark:hover:text-white">Edit</a>
                                        </li>
                                        <li>
                                            <a href="#"
                                               class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-second-100 dark:hover:text-white">Remove</a>
                                        </li>
                                        <li>
                                            <a href="#"
                                               class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-second-100 dark:hover:text-white">Report</a>
                                        </li>
                                    </ul>
                                </div>
                            </footer>
                            <p>
                                Very straight-to-point article. Really worth time reading. Thank
                                you! But tools are just the instruments for the UX designers.
                                The knowledge of the design tools are as important as the
                                creation of the design strategy.
                            </p>
                            <div class="flex items-center mt-4 space-x-4">
                                <button type="button"
                                        class="flex items-center font-medium text-sm text-gray-500 hover:underline dark:text-gray-400">
                                    <svg class="mr-1.5 w-3 h-3" aria-hidden="true"
                                         xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 18">
                                        <path
                                                d="M18 0H2a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h2v4a1 1 0 0 0 1.707.707L10.414 13H18a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2Zm-5 4h2a1 1 0 1 1 0 2h-2a1 1 0 1 1 0-2ZM5 4h5a1 1 0 1 1 0 2H5a1 1 0 0 1 0-2Zm2 5H5a1 1 0 0 1 0-2h2a1 1 0 0 1 0 2Zm9 0h-6a1 1 0 0 1 0-2h6a1 1 0 1 1 0 2Z" />
                                    </svg>
                                    Reply
                                </button>
                            </div>
                        </article>

                    </section>
                </article>
            </div>

            <!-- right side -->
            <div class="w-full px-4 md:w-1/2">
                <div class="lg:pl-20">
                    <div class="mb-6">
                            <span
                                    class="px-2.5 py-0.5 text-xs text-blue-600 bg-blue-100 dark:bg-second-100 rounded-xl dark:text-white">New
                                Event</span>
                        <h2
                                class="max-w-xl mt-6 mb-6 text-xl font-semibold leading-loose tracking-wide text-gray-700 md:text-2xl dark:text-gray-300">
                            Le spectacle d’humour Morocco Land - RABAT
                        </h2>

                        <p class="inline-block text-2xl font-semibold text-gray-700 dark:text-gray-400 ">
                            <span>Ticket - <span class="text-second-50">100MAD</span></span>
                            <!-- <span
                                class="ml-3 text-base font-normal text-gray-500 line-through dark:text-gray-400">Rs.10,000.00</span> -->
                        </p>
                    </div>
                    <div class="mb-6">
                        <h2 class="mb-2 text-lg font-bold text-gray-700 dark:text-gray-400">Information :</h2>
                        <div class="bg-gray-100 dark:bg-second-100 rounded-xl">
                            <div class="p-1">
                                <div class="p-2 rounded-xl lg:p-6 dark:bg-primary-100 bg-gray-50">
                                    <div class="flex flex-wrap justify-center gap-x-10 gap-y-4">
                                        <div class="w-full mb-4">
                                            <div class="flex ">
                                                    <span class="mr-3 text-gray-500 dark:text-gray-400">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28"
                                                             fill="currentColor" class="bi bi-diagram-3"
                                                             viewBox="0 0 16 16">
                                                            <path fill-rule="evenodd"
                                                                  d="M6 3.5A1.5 1.5 0 0 1 7.5 2h1A1.5 1.5 0 0 1 10 3.5v1A1.5 1.5 0 0 1 8.5 6v1H14a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-1 0V8h-5v.5a.5.5 0 0 1-1 0V8h-5v.5a.5.5 0 0 1-1 0v-1A.5.5 0 0 1 2 7h5.5V6A1.5 1.5 0 0 1 6 4.5v-1zM8.5 5a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1zM0 11.5A1.5 1.5 0 0 1 1.5 10h1A1.5 1.5 0 0 1 4 11.5v1A1.5 1.5 0 0 1 2.5 14h-1A1.5 1.5 0 0 1 0 12.5v-1zm1.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zm4.5.5A1.5 1.5 0 0 1 7.5 10h1a1.5 1.5 0 0 1 1.5 1.5v1A1.5 1.5 0 0 1 8.5 14h-1A1.5 1.5 0 0 1 6 12.5v-1zm1.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zm4.5.5a1.5 1.5 0 0 1 1.5-1.5h1a1.5 1.5 0 0 1 1.5 1.5v1a1.5 1.5 0 0 1-1.5 1.5h-1a1.5 1.5 0 0 1-1.5-1.5v-1zm1.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1z">
                                                            </path>
                                                        </svg>
                                                    </span>
                                                <div>
                                                    <p class="mr-3 text-gray-500 dark:text-gray-400">
                                                        Organized by
                                                    </p>
                                                    <h2
                                                            class="text-base font-semibold text-gray-700 dark:text-gray-400">
                                                        Saad moumou
                                                    </h2>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="w-full mb-4">
                                            <div class="flex ">
                                                    <span class="mr-3 text-gray-500 dark:text-gray-400">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28"
                                                             fill="currentColor" class="bi bi-clock-history"
                                                             viewBox="0 0 16 16">
                                                            <path
                                                                    d="M8.515 1.019A7 7 0 0 0 8 1V0a8 8 0 0 1 .589.022l-.074.997zm2.004.45a7.003 7.003 0 0 0-.985-.299l.219-.976c.383.086.76.2 1.126.342l-.36.933zm1.37.71a7.01 7.01 0 0 0-.439-.27l.493-.87a8.025 8.025 0 0 1 .979.654l-.615.789a6.996 6.996 0 0 0-.418-.302zm1.834 1.79a6.99 6.99 0 0 0-.653-.796l.724-.69c.27.285.52.59.747.91l-.818.576zm.744 1.352a7.08 7.08 0 0 0-.214-.468l.893-.45a7.976 7.976 0 0 1 .45 1.088l-.95.313a7.023 7.023 0 0 0-.179-.483zm.53 2.507a6.991 6.991 0 0 0-.1-1.025l.985-.17c.067.386.106.778.116 1.17l-1 .025zm-.131 1.538c.033-.17.06-.339.081-.51l.993.123a7.957 7.957 0 0 1-.23 1.155l-.964-.267c.046-.165.086-.332.12-.501zm-.952 2.379c.184-.29.346-.594.486-.908l.914.405c-.16.36-.345.706-.555 1.038l-.845-.535zm-.964 1.205c.122-.122.239-.248.35-.378l.758.653a8.073 8.073 0 0 1-.401.432l-.707-.707z">
                                                            </path>
                                                            <path
                                                                    d="M8 1a7 7 0 1 0 4.95 11.95l.707.707A8.001 8.001 0 1 1 8 0v1z">
                                                            </path>
                                                            <path
                                                                    d="M7.5 3a.5.5 0 0 1 .5.5v5.21l3.248 1.856a.5.5 0 0 1-.496.868l-3.5-2A.5.5 0 0 1 7 9V3.5a.5.5 0 0 1 .5-.5z">
                                                            </path>
                                                        </svg>
                                                    </span>
                                                <div>
                                                    <p class="mr-3 text-gray-500 dark:text-gray-400">
                                                        Date and hour
                                                    </p>
                                                    <h2
                                                            class="text-base font-semibold text-gray-700 dark:text-gray-400">
                                                        jeu. 30 oct . 18:00
                                                    </h2>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="w-full mb-4 lg:mb-0">
                                            <div class="flex ">
                                                    <span class="mr-3 text-gray-500 dark:text-gray-400">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28"
                                                             viewBox="0 0 48 48">
                                                            <g fill="none" stroke="#6b7280" stroke-linejoin="round"
                                                               stroke-width="4">
                                                                <path
                                                                        d="M24 44s15-12 15-25c0-8.284-6.716-15-15-15c-8.284 0-15 6.716-15 15c0 13 15 25 15 25Z" />
                                                                <path d="M24 25a6 6 0 1 0 0-12a6 6 0 0 0 0 12Z" />
                                                            </g>
                                                        </svg>
                                                    </span>
                                                <div>
                                                    <p class="mr-3 text-gray-500 dark:text-gray-400">
                                                        Localisation
                                                    </p>
                                                    <h2
                                                            class="text-base font-semibold text-gray-700 dark:text-gray-400">
                                                        3 Rue Jbel Abou Billal, Casablanca 20400, Vieilles
                                                        Canailles, Casablanca
                                                    </h2>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="py-6 mb-6 border-t border-b border-gray-200 dark:border-gray-700">
                        <div class="flex flex-wrap justify-between items-center">
                            <div>
                                <h2 class="mb-2 text-lg font-bold text-gray-700 dark:text-gray-400">Quentity :</h2>
                            </div>
                            <div class="mb-4 mr-4 lg:mb-0">
                                <div class="w-28">
                                    <div class="relative flex flex-row w-full h-10 bg-transparent rounded-lg">
                                        <!-- <button
                                            class="w-20 h-full text-gray-600 bg-gray-100 border-r rounded-l outline-none cursor-pointer dark:border-primary-50 dark:hover:bg-primary-100 dark:bg-second-100">
                                            <span class="m-auto text-lg font-medium text-white">-</span>
                                        </button> -->
                                        <input type="number"
                                               class="flex items-center w-full font-semibold text-center text-white outline-none placeholder-white dark:text-white dark:placeholder-white dark:bg-primary-100 border border-primary-50 text-md"
                                               placeholder="1" min="0">
                                        <!-- <button
                                            class="w-20 h-full text-gray-600 bg-gray-100 border-l rounded-r outline-none cursor-pointer dark:border-primary-50 dark:hover:bg-primary-100 dark:bg-second-100">
                                            <span class="m-auto text-lg font-medium text-white">+</span>
                                        </button> -->
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="mb-4 lg:mb-0">
                                <button
                                    class="flex items-center justify-center w-full h-10 p-2 mr-4 text-gray-700 border border-gray-300 lg:w-11 hover:text-gray-50 dark:text-gray-200 dark:border-blue-600 hover:bg-blue-600 hover:border-blue-600 dark:bg-blue-600 dark:hover:bg-blue-500 dark:hover:border-blue-500 dark:hover:text-gray-100">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                        class=" bi bi-heart" viewBox="0 0 16 16">
                                        <path
                                            d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z">
                                        </path>
                                    </svg>
                                </button>
                            </div> -->
                            <!-- <a href="#"
                                class="w-full px-4 py-3 text-center text-blue-600 bg-blue-100 border border-blue-600 dark:hover:bg-gray-900 dark:text-gray-400 dark:border-gray-700 dark:bg-gray-700 hover:bg-blue-600 hover:text-gray-100 lg:w-1/2 rounded-xl">
                                Add to cart
                            </a> -->
                        </div>
                    </div>
                    <div class="mb-6 "></div>
                    <div class="flex gap-4 mb-6">
                        <a href="reservation-ticket?id=1"
                                class="w-full text-white font-medium rounded-lg text-sm px-5 py-2.5 text-center bg-second-100 items-center border-4 border-second-100 hover:bg-transparent ease-linear transition delay-400">
                            Reserve now !</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- E Post Event -->
<%--E Content Dynamic--%>

<!-- B footer -->
<%@ include file="../components/includes/static/footer.jsp"%>
<!-- E footer -->

<%--links js--%>
<%@ include file="../components/includes/js.jsp"%>
