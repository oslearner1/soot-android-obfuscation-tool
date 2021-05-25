.class public final Lcom/vivo/PCTools/r/e;
.super Ljava/lang/Object;


# static fields
.field private static final h:[Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Landroid/net/Uri;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.mediatek.telephony.SmsManagerEx"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.telephony.MSimSmsManager"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.telephony.gemini.GeminiSmsManager"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/PCTools/r/e;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;JI)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/vivo/PCTools/r/e;->d:I

    iput v0, p0, Lcom/vivo/PCTools/r/e;->e:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/PCTools/r/e;->g:J

    iput-object p1, p0, Lcom/vivo/PCTools/r/e;->f:Landroid/net/Uri;

    iput-object p2, p0, Lcom/vivo/PCTools/r/e;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/PCTools/r/e;->b:Landroid/content/Context;

    iput p7, p0, Lcom/vivo/PCTools/r/e;->d:I

    iput-object p3, p0, Lcom/vivo/PCTools/r/e;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/vivo/PCTools/r/e;->g:J

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;JII)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/vivo/PCTools/r/e;->d:I

    iput v0, p0, Lcom/vivo/PCTools/r/e;->e:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/PCTools/r/e;->g:J

    iput-object p1, p0, Lcom/vivo/PCTools/r/e;->f:Landroid/net/Uri;

    iput-object p2, p0, Lcom/vivo/PCTools/r/e;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/PCTools/r/e;->b:Landroid/content/Context;

    iput p7, p0, Lcom/vivo/PCTools/r/e;->d:I

    iput-object p3, p0, Lcom/vivo/PCTools/r/e;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/vivo/PCTools/r/e;->g:J

    iput p8, p0, Lcom/vivo/PCTools/r/e;->e:I

    return-void
.end method


# virtual methods
.method public final sendSms()V
    .locals 13

    const/4 v3, 0x4

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/r/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/PCTools/r/e;->f:Landroid/net/Uri;

    invoke-static {v0, v1, v3, v5}, Lcom/vivo/PCTools/r/p;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/r/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v5

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_2

    sget-object v1, Lcom/vivo/PCTools/util/a;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "SmsSendHandler"

    const-string v5, "Single sim send message"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vivo/PCTools/r/e;->c:Ljava/lang/String;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.vivo.PCTools.sms.MESSAGE_SENT"

    iget-object v8, p0, Lcom/vivo/PCTools/r/e;->f:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v7, "thread_id"

    iget-wide v8, p0, Lcom/vivo/PCTools/r/e;->g:J

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v1, v7, :cond_3

    const-string v7, "lastone"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v7, p0, Lcom/vivo/PCTools/r/e;->b:Landroid/content/Context;

    invoke-static {v7, v10, v6, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/vivo/PCTools/r/e;->b:Landroid/content/Context;

    invoke-static {v7, v5, v6, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_6

    const-string v2, "android.telephony.SmsManager"

    const-string v5, "sendMultipartTextMessage"

    const-string v1, "getSmsManagerForSubscriber"

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-le v6, v7, :cond_5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v1, "getSmsManagerForSubscriptionId"

    :cond_5
    const-string v6, "SmsSendHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sub_id= "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/vivo/PCTools/r/e;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v6, "SmsSendHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Search class "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v6, "SmsSendHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Search Method "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v6, "SmsSendHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Search Method "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/util/ArrayList;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, Ljava/util/ArrayList;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-class v8, Ljava/util/ArrayList;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v6, "SmsSendHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "invoke method "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/vivo/PCTools/r/e;->e:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/vivo/PCTools/r/e;->c:Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v1, v6

    const/4 v6, 0x2

    aput-object v3, v1, v6

    const/4 v3, 0x3

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput-object v4, v1, v3

    const-string v3, "SmsSendHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "invoke method "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/vivo/PCTools/r/e;->h:[Ljava/lang/String;

    array-length v6, v2

    move v1, v5

    :goto_3
    if-ge v1, v6, :cond_0

    aget-object v0, v2, v1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "SmsSendHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "find class "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    array-length v9, v8

    move v0, v5

    :goto_4
    if-ge v0, v9, :cond_0

    aget-object v10, v8, v0

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "sendMultipartTextMessageGemini"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v0, "SmsSendHandler"

    const-string v7, "find method sendMultipartTextMessageGemini"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/vivo/PCTools/r/e;->c:Ljava/lang/String;

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, v0, v7

    const/4 v7, 0x2

    aput-object v3, v0, v7

    const/4 v7, 0x3

    iget v8, p0, Lcom/vivo/PCTools/r/e;->d:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x4

    aput-object v4, v0, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput-object v8, v0, v7

    const/4 v7, 0x0

    invoke-virtual {v10, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SmsSendHandler"

    const-string v7, "invoke method sendMultipartTextMessageGemini"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_7

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "sendMultipartTextMessage"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v0, "SmsSendHandler"

    const-string v8, "find method sendMultipartTextMessage"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "getDefault"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v7, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/vivo/PCTools/r/e;->c:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    const/4 v8, 0x3

    aput-object v4, v7, v8

    const/4 v8, 0x4

    const/4 v9, 0x0

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p0, Lcom/vivo/PCTools/r/e;->d:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v10, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SmsSendHandler"

    const-string v7, "invoke method sendMultipartTextMessage"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_5

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_5
.end method
