.class public final Lcom/vivo/PCTools/l/b;
.super Lcom/vivo/PCTools/Pcserver/a;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/vivo/PCTools/l/a;


# direct methods
.method public constructor <init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/PCTools/Pcserver/a;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    const-string v0, "MusicWorkerHandler"

    iput-object v0, p0, Lcom/vivo/PCTools/l/b;->d:Ljava/lang/String;

    new-instance v0, Lcom/vivo/PCTools/l/a;

    iget-object v1, p0, Lcom/vivo/PCTools/l/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/PCTools/l/b;->e:Lcom/vivo/PCTools/l/a;

    iget-object v0, p0, Lcom/vivo/PCTools/l/b;->d:Ljava/lang/String;

    const-string v1, "MusicWorkerHandler Create"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final HandleMessage()V
    .locals 5

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/vivo/PCTools/l/b;->e:Lcom/vivo/PCTools/l/a;

    iget-object v3, p0, Lcom/vivo/PCTools/l/b;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/l/a;->musicDoProcess(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vivo/PCTools/l/b;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    iget-object v2, p0, Lcom/vivo/PCTools/l/b;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "**************************** handleMessage cost time = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onCreateXmlFile(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 0

    return-void
.end method
