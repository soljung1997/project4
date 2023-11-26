
<html lang="en" data-bs-theme="dark"><head><script src="https://getbootstrap.com/docs/5.3/assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.118.2">
    <title>Home Page</title>
    <%@page import="com.crud.dao.MemberDAO, com.crud.bean.MemberVO,java.util.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/blog/">



    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <!-- Favicons -->
    <link rel="apple-touch-icon" href="https://getbootstrap.com/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="https://getbootstrap.com/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="https://getbootstrap.com/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="https://getbootstrap.com/docs/5.3/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="https://getbootstrap.com/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
    <link rel="icon" href="https://getbootstrap.com/docs/5.3/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#712cf9">


    <style>

        .content-text{
            max-height: 100px ;
            overflow: hidden ;
        }

        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .b-example-divider {
            width: 100%;
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        .bi {
            vertical-align: -.125em;
            fill: currentColor;
        }

        .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }

        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }

        .btn-bd-primary {
            --bd-violet-bg: #712cf9;
            --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

            --bs-btn-font-weight: 600;
            --bs-btn-color: var(--bs-white);
            --bs-btn-bg: var(--bd-violet-bg);
            --bs-btn-border-color: var(--bd-violet-bg);
            --bs-btn-hover-color: var(--bs-white);
            --bs-btn-hover-bg: #6528e0;
            --bs-btn-hover-border-color: #6528e0;
            --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
            --bs-btn-active-color: var(--bs-btn-hover-color);
            --bs-btn-active-bg: #5a23c8;
            --bs-btn-active-border-color: #5a23c8;
        }

        .bd-mode-toggle {
            z-index: 1500;
        }

        .bd-mode-toggle .dropdown-menu .active .bi {
            display: block !important;
        }
    </style>


    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900&amp;display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
</head>
<body>
<svg xmlns="http://www.w3.org/2000/svg" class="d-none">
    <symbol id="check2" viewBox="0 0 16 16">
        <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"></path>
    </symbol>
    <symbol id="circle-half" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"></path>
    </symbol>
    <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"></path>
        <path d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"></path>
    </symbol>
    <symbol id="sun-fill" viewBox="0 0 16 16">
        <path d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"></path>
    </symbol>
</svg>

<div class="dropdown position-fixed bottom-0 end-0 mb-3 me-3 bd-mode-toggle">
    <button class="btn btn-bd-primary py-2 dropdown-toggle d-flex align-items-center" id="bd-theme" type="button" aria-expanded="false" data-bs-toggle="dropdown" aria-label="Toggle theme (dark)">
        <svg class="bi my-1 theme-icon-active" width="1em" height="1em"><use href="#moon-stars-fill"></use></svg>
        <span class="visually-hidden" id="bd-theme-text">Toggle theme</span>
    </button>
    <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="bd-theme-text">
        <li>
            <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="light" aria-pressed="false">
                <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#sun-fill"></use></svg>
                Light
                <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
            </button>
        </li>
        <li>
            <button type="button" class="dropdown-item d-flex align-items-center active" data-bs-theme-value="dark" aria-pressed="true">
                <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#moon-stars-fill"></use></svg>
                Dark
                <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
            </button>
        </li>
        <li>
            <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="auto" aria-pressed="false">
                <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#circle-half"></use></svg>
                Auto
                <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
            </button>
        </li>
    </ul>
</div>


<svg xmlns="http://www.w3.org/2000/svg" class="d-none">
    <symbol id="aperture" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24">
        <circle cx="12" cy="12" r="10"></circle>
        <path d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94"></path>
    </symbol>
    <symbol id="cart" viewBox="0 0 16 16">
        <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"></path>
    </symbol>
    <symbol id="chevron-right" viewBox="0 0 16 16">
        <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"></path>
    </symbol>
</svg>

<div class="container">
    <header class="border-bottom lh-1 py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
            <div class="col-4 d-flex align-items-center">
                <a class="btn btn-sm btn-outline-secondary" href="addpostform.jsp">New Post</a>
            </div>
            <div class="col-4 text-center">
                <a class="blog-header-logo text-body-emphasis text-decoration-none" href="index.jsp">Life of a Hermit</a>
            </div>
            <div class="col-4 d-flex justify-content-end align-items-center">
                <a class="btn btn-sm btn-outline-secondary" href="posts.jsp">All posts</a>
            </div>
        </div>
    </header>

    <div class="nav-scroller py-1 mb-3 border-bottom">
        <nav class="nav nav-underline justify-content-between">
            <a class="p-2 link-secondary" href="posts.jsp?genre=Nihilism">Nihilism</a>
            <a class="p-2 link-secondary" href="posts.jsp?genre=Theology">Theology</a>
            <a class="p-2 link-secondary" href="posts.jsp?genre=Existentialism">Existentialism</a>
            <a class="p-2 link-secondary" href="posts.jsp?genre=Postmodernism">Postmodernism</a>
            <a class="p-2 link-secondary" href="posts.jsp?genre=Stoicism">Stoicism</a>
            <a class="p-2 link-secondary" href="posts.jsp?genre=Classical">Classical</a>
            <a class="p-2 link-secondary" href="posts.jsp?genre=Modern">Modern</a>
        </nav>
    </div>
</div>

<main class="container">
    <%
        MemberDAO memberDAO = new MemberDAO();
        List<MemberVO> list = memberDAO.getList();
        request.setAttribute("list", list);
        MemberVO firstPost = null;
        if (!list.isEmpty()) {
            firstPost = list.get(0); // Get the first blog post
        }
    %>
    <% if (firstPost != null) { %>
    <div class="p-4 p-md-5 mb-4 rounded text-body-emphasis" style="background-image: url('${pageContext.request.contextPath}/upload/<%= firstPost.getPhoto() %>'); background-size: cover; background-repeat: no-repeat; background-position: center center;">
        <div class="col-lg-6 px-0">
            <h1 class="display-4 fst-italic"><%= firstPost.getTitle() %></h1>
            <p class="lead my-3"><%= firstPost.getContent() %></p> <!-- Adjust to show a summary or excerpt if needed -->
            <p class="lead mb-0"><a href="view.jsp?id=<%= firstPost.getSid() %>" class="text-body-emphasis fw-bold">Continue reading...</a></p>
        </div>
    </div>
    <% } %>

    <div class="row mb-2">
        <div class="col-md-6">
            <%
                MemberVO secondPost = null;
                if (!list.isEmpty()) {
                    secondPost = list.get(1); // Get the first blog post
                }
            %>
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <% if (secondPost != null) { %>
                        <strong class="d-inline-block mb-2 text-primary-emphasis"><%= secondPost.getGenre() %></strong>
                        <h3 class="mb-0"><%= secondPost.getTitle() %></h3>
                        <p class="card-text mb-auto content-text"><%= secondPost.getContent() %></p>
                        <a href="view.jsp?id=<%= secondPost.getSid() %>" class="icon-link gap-1 icon-link-hover stretched-link">
                            Continue reading
                            <svg class="bi"><use xlink:href="#chevron-right"></use></svg>
                        </a>
                    <% } %>
                </div>
                <div class="col-auto d-none d-lg-block">

                    <img src="${pageContext.request.contextPath}/upload/<%= secondPost.getPhoto() %>"
                         class="bd-placeholder-img"
                         style="width: 200px; height: 250px; object-fit: cover; object-position: center;"
                         alt="Thumbnail">
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <%
                MemberVO thirdPost = null;
                if (!list.isEmpty()) {
                    thirdPost = list.get(2); // Get the first blog post
                }
            %>
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">

                    <% if (thirdPost != null) { %>
                        <strong class="d-inline-block mb-2 text-primary-emphasis"><%= thirdPost.getGenre() %></strong>
                        <h3 class="mb-0"><%= thirdPost.getTitle() %></h3>
                        <p class="card-text mb-auto content-text"><%= thirdPost.getContent() %></p>
                        <a href="view.jsp?id=<%= thirdPost.getSid() %>" class="icon-link gap-1 icon-link-hover stretched-link">
                            Continue reading
                            <svg class="bi"><use xlink:href="#chevron-right"></use></svg>
                        </a>
                    <% } %>
                </div>
                <div class="col-auto d-none d-lg-block">
                    <img src="${pageContext.request.contextPath}/upload/<%= thirdPost.getPhoto() %>"
                         class="bd-placeholder-img"
                         style="width: 200px; height: 250px; object-fit: cover; object-position: center;"
                         alt="Thumbnail">
                </div>
            </div>
        </div>
    </div>

    <div class="row g-5">
        <div class="col-md-8">
            <%
                MemberVO fourthPost = null;
                if (!list.isEmpty()) {
                    fourthPost = list.get(3);
                }
            %>

            <% if (fourthPost != null) { %>
                <article class="blog-post">
                    <a href="view.jsp?id=<%= fourthPost.getSid() %>" class="display-5 link-body-emphasis mb-3">
                        <%= fourthPost.getTitle() %>
                    </a>
                    <p class="blog-post-meta mb-3">Date: <%= fourthPost.getRegdate() %><br>Author: <%= fourthPost.getAuthor() %></p>
                    <hr>
                    <img src="${pageContext.request.contextPath}/upload/<%= fourthPost.getPhoto() %>"
                         class="photo mb-3"
                         style="max-width: 100%; height: auto; display: block; margin: 20px auto; border-radius: 15px;">
                    <hr>
                    <p class="mt-3"><%= fourthPost.getContent() %></p>
                </article>

            <% } %>
        </div>

        <div class="col-md-4">
            <div class="position-sticky" style="top: 2rem;">
                <div class="p-4 mb-3 bg-body-tertiary rounded">
                    <h4 class="fst-italic">About</h4>
                    <p class="mb-0">This blog is for the dedicated usage of philosophers interested in sharing their ideas.</p>
                </div>

                <div>
                    <h4 class="fst-italic">Recent posts</h4>
                    <ul class="list-unstyled">
                        <li>
                            <%
                                MemberVO seventhPost = null;
                                if (!list.isEmpty()) {
                                    seventhPost = list.get(6);
                                }
                            %>
                            <% if (seventhPost != null) { %>
                            <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none border-top" href="view.jsp?id=<%= seventhPost.getSid() %>">
                                <img src="${pageContext.request.contextPath}/upload/<%= seventhPost.getPhoto() %>"
                                     class="bd-placeholder-img"
                                     style="width: 150px; height: 96px; object-fit: cover; object-position: center;"
                                     alt="Thumbnail">
                                <div class="col-lg-8">
                                    <h6 class="mb-0"><%= seventhPost.getTitle() %></h6>
                                    <small class="text-body-secondary"><%= seventhPost.getRegdate() %></small>
                                </div>
                            </a>
                            <% } %>
                        </li>
                        <li>
                            <%
                                MemberVO eightPost = null;
                                if (!list.isEmpty()) {
                                    eightPost = list.get(7);
                                }
                            %>
                            <% if (eightPost != null) { %>
                            <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none border-top" href="view.jsp?id=<%= eightPost.getSid() %>">
                                <img src="${pageContext.request.contextPath}/upload/<%= eightPost.getPhoto() %>"
                                     class="bd-placeholder-img"
                                     style="width: 150px; height: 96px; object-fit: cover; object-position: center;"
                                     alt="Thumbnail">
                                <div class="col-lg-8">
                                    <h6 class="mb-0"><%= eightPost.getTitle() %></h6>
                                    <small class="text-body-secondary"><%= eightPost.getRegdate() %></small>
                                </div>
                            </a>
                            <% } %>
                        </li>
                        <li>
                            <%
                                MemberVO ninthPost = null;
                                if (!list.isEmpty()) {
                                    ninthPost = list.get(8);
                                }
                            %>
                            <% if (ninthPost != null) { %>
                            <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none border-top" href="view.jsp?id=<%= ninthPost.getSid() %>">
                                <img src="${pageContext.request.contextPath}/upload/<%= ninthPost.getPhoto() %>"
                                     class="bd-placeholder-img"
                                     style="width: 150px; height: 96px; object-fit: cover; object-position: center;"
                                     alt="Thumbnail">
                                <div class="col-lg-8">
                                    <h6 class="mb-0"><%= ninthPost.getTitle() %></h6>
                                    <small class="text-body-secondary"><%= ninthPost.getRegdate() %></small>
                                </div>
                            </a>
                            <% } %>
                        </li>
                    </ul>
                </div>

                <div class="p-4">
                    <h4 class="fst-italic">Blog Social Media</h4>
                    <ol class="list-unstyled">
                        <li><a href="https://twitter.com">Twitter</a></li>
                        <li><a href="https://facebook.com">Facebook</a></li>
                    </ol>
                </div>
            </div>
        </div>

        <div class="col-md-8">
            <%
                MemberVO fifthPost = null;
                if (!list.isEmpty()) {
                    fifthPost = list.get(4);
                }
            %>

            <% if (fifthPost != null) { %>
            <article class="blog-post">
                <a href="view.jsp?id=<%= fifthPost.getSid() %>" class="display-5 link-body-emphasis mb-3">
                    <%= fifthPost.getTitle() %>
                </a>
                <p class="blog-post-meta mb-3">Date: <%= fifthPost.getRegdate() %><br>Author: <%= fifthPost.getAuthor() %></p>
                <hr>
                <img src="${pageContext.request.contextPath}/upload/<%= fifthPost.getPhoto() %>"
                     class="photo mb-3"
                     style="max-width: 100%; height: auto; display: block; margin: 20px auto; border-radius: 15px;">
                <hr>
                <p class="mt-3"><%= fifthPost.getContent() %></p>
            </article>
            <% } %>
        </div>
        <div class="col-md-8">
            <%
                MemberVO sixthPost = null;
                if (!list.isEmpty()) {
                    sixthPost = list.get(5);
                }
            %>

            <% if (sixthPost != null) { %>
            <article class="blog-post">
                <a href="view.jsp?id=<%= sixthPost.getSid() %>" class="display-5 link-body-emphasis mb-3">
                    <%= sixthPost.getTitle() %>
                </a>
                <p class="blog-post-meta mb-3">Date: <%= sixthPost.getRegdate() %><br>Author: <%= sixthPost.getAuthor() %></p>
                <hr>
                <img src="${pageContext.request.contextPath}/upload/<%= sixthPost.getPhoto() %>"
                     class="photo mb-3"
                     style="max-width: 100%; height: auto; display: block; margin: 20px auto; border-radius: 15px;">
                <hr>
                <p class="mt-3"><%= sixthPost.getContent() %></p>
            </article>
            <% } %>
        </div>
    </div>

</main>

<footer class="py-5 text-center text-body-secondary bg-body-tertiary">
    <p class="mb-0">
        <a href="#">Back to top</a>
    </p>
</footer>
<script src="https://getbootstrap.com/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

<script src="https://raw.githubusercontent.com/twbs/bootstrap/32147914d419f87abc5f2eb5addfdbcb6b1d5fb0/site/content/docs/5.3/examples/checkout/checkout.js"></script>


</body></html>