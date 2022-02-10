[#ftl output_format="HTML"]

[#if actionMessages?size>0]
    [#list actionMessages as message]
        <div class="alert alert-success mx-md-4 mx-2 mt-2 alert-dismissible fade show d-flex" role="alert">
            <div class="me-3">
                <i class="bi bi-check2-circle alert-green-2 fs-bigger-2 me-2"></i>
            </div>
            <div class="overflow-x-hidden pt-1">
                <span>${message!}</span>
            </div>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    [/#list]
[/#if]

[#if actionErrors?size>0]
    [#list actionErrors as error]
        <div class="alert alert-danger mx-md-4 mx-2 mt-2 alert-dismissible fade show d-flex" role="alert">
            <div class="me-3">
                <i class="bi bi-exclamation-circle alert-red-2 fs-bigger-2 me-2"></i>
            </div>
            <div class="overflow-x-hidden pt-1">
                <span>${error!}</span>
            </div>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    [/#list]
[/#if]
