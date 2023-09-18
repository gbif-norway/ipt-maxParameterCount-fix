<#include "/WEB-INF/pages/inc/header.ftl">
<title><@s.text name="admin.home.manageLogs"/></title>
<#assign currentMenu = "admin"/>
<script>
    $(document).ready(function(){
        $.get("${baseURL}/admin/logfile.do", {log:"admin"}, function(data){
            $("#logs").text(data);
        });
    });
</script>
<#include "/WEB-INF/pages/inc/menu.ftl">

<div class="container px-0">
    <#include "/WEB-INF/pages/inc/action_alerts.ftl">
</div>

<div class="container-fluid bg-body border-bottom">
    <div class="container bg-body border rounded-2 mb-4">
        <div class="container my-3 p-3">
            <div class="text-center">
                <div class="fs-smaller">
                    <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center mb-0">
                            <li class="breadcrumb-item"><a href="${baseURL}/admin/"><@s.text name="breadcrumb.admin"/></a></li>
                            <li class="breadcrumb-item"><@s.text name="breadcrumb.admin.logs"/></li>
                        </ol>
                    </nav>
                </div>

                <h1 class="pb-2 mb-0 pt-2 text-gbif-header fs-2 fw-normal">
                    <@s.text name="admin.home.manageLogs"/>
                </h1>

                <div class="mt-2">
                    <a href="${baseURL}/admin/" class="btn btn-sm btn-outline-secondary top-button">
                        <@s.text name="button.cancel"/>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<main class="container">
    <div class="my-3 p-3">
        <p>
            <strong><@s.text name="admin.logs.warn"/></strong>
        </p>
        <p>
            <@s.text name="admin.logs.download"><@s.param>logfile.do?log=debug</@s.param></@s.text>
        </p>

        <pre id="logs"></pre>
    </div>
</main>

<#include "/WEB-INF/pages/inc/footer.ftl">
