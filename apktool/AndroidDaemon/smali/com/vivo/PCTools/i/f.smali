.class public final Lcom/vivo/PCTools/i/f;
.super Lcom/vivo/PCTools/Pcserver/a;


# instance fields
.field private d:Lcom/vivo/PCTools/i/c;


# direct methods
.method public constructor <init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/PCTools/Pcserver/a;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    new-instance v0, Lcom/vivo/PCTools/i/c;

    iget-object v1, p0, Lcom/vivo/PCTools/i/f;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/i/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/PCTools/i/f;->d:Lcom/vivo/PCTools/i/c;

    return-void
.end method


# virtual methods
.method public final HandleMessage()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/i/f;->d:Lcom/vivo/PCTools/i/c;

    iget-object v1, p0, Lcom/vivo/PCTools/i/f;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/i/c;->contactsDoProcess(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/i/f;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V
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
