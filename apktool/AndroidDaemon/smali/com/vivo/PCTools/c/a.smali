.class public Lcom/vivo/PCTools/c/a;
.super Lcom/vivo/PCTools/Pcserver/a;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/PCTools/Pcserver/a;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    const-class v0, Lcom/vivo/PCTools/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/c/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/PCTools/c/a;->d:Ljava/lang/String;

    const-string v1, "new ThemeInstallHandler"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public HandleMessage()V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/PCTools/c/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vivo/PCTools/c/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v3}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v3

    const-string v4, "utf-8"

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/e;->getInstance()Lcom/vivo/PCTools/Pcserver/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/PCTools/Pcserver/e;->getAllChannels()Lorg/jboss/netty/channel/group/ChannelGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/c/a;->b:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/group/ChannelGroup;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vivo/PCTools/c/a;->c:Landroid/content/Context;

    const-class v3, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "path"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DesktopW"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "LockW"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "msgId"

    iget-object v3, p0, Lcom/vivo/PCTools/c/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v3}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "channelId"

    iget-object v3, p0, Lcom/vivo/PCTools/c/a;->b:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v3}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vivo/PCTools/c/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/vivo/PCTools/c/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateXmlFile(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 0

    return-void
.end method
