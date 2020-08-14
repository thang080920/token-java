<#import "/spring.ftl" as spring />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Activate Account</title>
</head>
<body>
    <h1>Verify your email</h1>

    <@spring.bind "verificationForm"/>
    <#if verificationForm?? && noErrors??>
        Sent a confirmation link to your inbox ${verificationForm.email}<br>
        <#else>
            <form action="/email-verification" method="post">
                Email: <@spring.formInput "verificationForm.email"/>
                <@spring.showErrors "<br/>"/>
                <br><br>
                <button>Submit</button>
            </form>
    </#if>
</body>
</html>