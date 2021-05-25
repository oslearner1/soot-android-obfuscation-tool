.class public final Lcom/vivo/PCTools/Calendar/d;
.super Lcom/vivo/PCTools/Pcserver/a;


# instance fields
.field private d:Lcom/vivo/PCTools/Calendar/a;


# direct methods
.method public constructor <init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/PCTools/Pcserver/a;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/d;->d:Lcom/vivo/PCTools/Calendar/a;

    new-instance v0, Lcom/vivo/PCTools/Calendar/a;

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Calendar/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/d;->d:Lcom/vivo/PCTools/Calendar/a;

    return-void
.end method


# virtual methods
.method public final HandleMessage()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/d;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/Calendar/d;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/d;->d:Lcom/vivo/PCTools/Calendar/a;

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/d;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/Calendar/a;->GetAllEvents(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/d;->d:Lcom/vivo/PCTools/Calendar/a;

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/d;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/Calendar/a;->SaveEvents(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/d;->d:Lcom/vivo/PCTools/Calendar/a;

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/d;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/Calendar/a;->DelEvents(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/d;->d:Lcom/vivo/PCTools/Calendar/a;

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/d;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/Calendar/a;->DelAllEvents(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/d;->d:Lcom/vivo/PCTools/Calendar/a;

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/d;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/Calendar/a;->ImportEvents(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final onCreateXmlFile(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 0

    return-void
.end method
