<!DOCTYPE html>
<html>
    <head>
        {block "meta"}
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

            <title>{if $title}{$title}{else}{$app->getName()}{/if}</title>

            <base href="/webapps/{$app->getName()}/" />
        {/block}

        {block "css-head"}{/block}
    </head>

    <body class="{block "body-class"}loading{/block}">
        {block "body"}{/block}

        {block "js-data"}
            <script type="text/javascript">
                var SiteEnvironment = SiteEnvironment || { };
                SiteEnvironment.user = {JSON::translateObjects($.User)|json_encode};
                SiteEnvironment.appName = {$app->getName()|json_encode};
                SiteEnvironment.appBaseUrl = '/webapps/{$app->getName()}';
            </script>
        {/block}

        {block "css-app"}
            {$app->buildCssMarkup()}
        {/block}

        {block "js-app"}
            {$app->buildJsMarkup()}
        {/block}

        {block "js-analytics"}
            {include "includes/site.analytics.tpl"}
        {/block}
    </body>
</html>