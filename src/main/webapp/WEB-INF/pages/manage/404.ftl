[#ftl]
[#include "/WEB-INF/pages/inc/header-bootstrap.ftl"/]
<title>[@s.text name="manage.404.title"/]</title>
[#assign currentMenu = "manage"/]
[#include "/WEB-INF/pages/inc/menu-bootstrap.ftl"/]

<main class="container pt-5">

    [#include "/WEB-INF/pages/inc/action_alerts-bootstrap.ftl"]

    <div class="my-3 p-3 bg-body rounded shadow-sm">
        <h5 class="border-bottom pb-2 mb-2 mx-md-4 mx-2 pt-2 text-success text-center">[@s.text name="manage.404.title"/]</h5>
        <p class="text-muted mx-md-4 mx-2">[@s.text name="manage.404.body"/]</p>
    </div>
</main>

[#include "/WEB-INF/pages/inc/footer-bootstrap.ftl"/]
