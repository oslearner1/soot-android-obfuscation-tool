.class public Lcom/vivo/PCTools/f/b;
.super Lcom/vivo/PCTools/Pcserver/a;


# static fields
.field private static volatile d:Z

.field private static volatile e:I

.field private static final f:Ljava/lang/String;


# instance fields
.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/PCTools/f/b;->d:Z

    const/4 v0, -0x1

    sput v0, Lcom/vivo/PCTools/f/b;->e:I

    const-class v0, Lcom/vivo/PCTools/f/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/PCTools/f/b;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/PCTools/Pcserver/a;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/vivo/PCTools/f/b;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public HandleMessage()V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/e;->getInstance()Lcom/vivo/PCTools/Pcserver/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/PCTools/Pcserver/e;->getAllChannels()Lorg/jboss/netty/channel/group/ChannelGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/f/b;->b:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/group/ChannelGroup;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vivo/PCTools/f/b;->b:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/vivo/PCTools/f/b;->e:I

    iget-object v0, p0, Lcom/vivo/PCTools/f/b;->b:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/PCTools/Pcserver/e;->a:Ljava/lang/String;

    new-instance v0, Lcom/vivo/PCTools/Pcserver/c;

    invoke-direct {v0}, Lcom/vivo/PCTools/Pcserver/c;-><init>()V

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/ServerService;->getService()Lcom/vivo/PCTools/Pcserver/ServerService;

    move-result-object v1

    sget-object v2, Lcom/vivo/PCTools/Pcserver/ServerService;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1, v2}, Lcom/vivo/PCTools/Pcserver/c;->showNotification(Landroid/app/Service;Landroid/app/NotificationManager;)V

    const-string v1, "1.00.00"

    invoke-virtual {p0}, Lcom/vivo/PCTools/f/b;->getmContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "setting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "hasAuthorize"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iget-object v0, p0, Lcom/vivo/PCTools/f/b;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->getUnAllowedPermissions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/vivo/PCTools/f/b;->g:Landroid/content/Context;

    const-class v7, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v6, "denied"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vivo/PCTools/f/b;->g:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/f/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "com.vivo.PCTools"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/vivo/PCTools/f/b;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v1, p0, Lcom/vivo/PCTools/f/b;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_1

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/f/b;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    :goto_2
    iget-object v0, p0, Lcom/vivo/PCTools/f/b;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/f/b;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    sget-object v0, Lcom/vivo/PCTools/f/b;->f:Ljava/lang/String;

    const-string v6, "get version failure"

    invoke-static {v0, v6}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/f/b;->a:Lcom/vivo/PCTools/q/a/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_2

    :cond_1
    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/f/b;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/vivo/PCTools/f/b;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method public onCreateXmlFile(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 0

    return-void
.end method
