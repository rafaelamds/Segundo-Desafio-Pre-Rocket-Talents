<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
    <title>${html_title}</title>

    <meta content="initial-scale=1.0, width=device-width" name="viewport" />
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />

    <@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<div class="d-flex flex-column min-vh-100">
    <@liferay.control_menu />

    <div class="d-flex flex-column flex-fill position-relative" id="wrapper">

            <header id="banner">
                <div class="navbar navbar-classic navbar-top py-3">
                    <div class="container-fluid container-fluid-max-xl user-personal-bar">
                        <div class="align-items-center autofit-row">
                            <a class="${logo_css_class} align-items-center d-md-inline-flex d-sm-none d-none logo-md" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
                                <img alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" />
                                    <h1 class="font-weight-bold h2 mb-0" style="font-size: 30px; color:#73b4c3;">${site_name}</h1>
                            </a>

                            <#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />

                            <div class="autofit-col autofit-col-expand">
                                    <div class="justify-content-md-end mr-4 navbar-form" role="search">
                                        <@liferay.search_bar default_preferences="${preferences}" />
                                    </div>
                            </div>

                           <!-- <div class="autofit-col">
                                <@liferay.user_personal_bar />
                            </div>-->
                        </div>
                    </div>
                </div>

                <div class="navbar navbar-classic navbar-expand-md navbar-light pb-3">
                    <div class="container-fluid container-fluid-max-xl">
                        <a class="${logo_css_class} align-items-center d-inline-flex d-md-none logo-xs" href="${site_default_url}" rel="nofollow">
                            <img alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" />


                                <h2 class="font-weight-bold h2 mb-0 text-dark">${site_name}</h2>

                        </a>

                        <#include "${full_templates_path}/navigation.ftl" />
                    </div>
                </div>
    		</header>
			<section class="container flex-fill" id="content">

                <@liferay_util["include"] page=content_include />

                ${portletDisplay.recycle()}

                ${portletDisplay.setTitle(the_title)}

                <@liferay_theme["wrap-portlet"] page="portlet.ftl">
                    <@liferay_util["include"] page=content_include />
                </@>

        </section>

            <footer id="footer" role="contentinfo">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center text-md-left">
                            <@liferay.language_format
                                arguments='<a class="text-decoration-underline text-white" href="http://www.liferay.com" rel="external">Liferay</a>'
                                key="powered-by-x"
                            />
                        </div>
                    </div>
                </div>
            </footer>
    </div>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</body>

</html>