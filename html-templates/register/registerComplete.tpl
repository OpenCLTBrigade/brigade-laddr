{extends "designs/site.tpl"}

{block title}{_ "Registration complete"} &mdash; {$dwoo.parent}{/block}

{block "content"}
    {$User = $data}

    <div class="page-header">
        <h1>{_ "Registration complete"}</h1>
    </div>

    {capture assign=personLink}<a href="{$User->getUrl()|escape}">{$User->Username|escape}</a>{/capture}
    <p class="lead">{"Your username for %s is: %s"|_|sprintf:Laddr::$siteName:$personLink}</p>

    <p>
        {_ "Things to do next…"}
        <ul>
            {if $.request.return}
                <li><a href="{$.request.return|escape}">{"Continue back to %s"|_|sprintf:$.request.return|escape}</a></li>
            {/if}
            <li><a href="/profile">{_ "Fill out your profile and upload a photo"}</a></li>
            <li><a href="https://forum.opencharlotte.org" target="_blank">Join a conversation on Discourse</a></li>
            <li><a href="https://www.meetup.com/Open-Charlotte-Brigade/" target="_blank">Join us at our next Community Action Night!</a></li>
            <li>Check your email for an invitation to join us on <a href="/chat">Slack</a>!</li>
        </ul>
    </p>
{/block}