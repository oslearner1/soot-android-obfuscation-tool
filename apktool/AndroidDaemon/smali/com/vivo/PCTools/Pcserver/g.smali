.class final Lcom/vivo/PCTools/Pcserver/g;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/Pcserver/ServerService;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/Pcserver/ServerService;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/Pcserver/g;->a:Lcom/vivo/PCTools/Pcserver/ServerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/vivo/PCTools/Pcserver/ServerService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PhoneStateListener.onCallStateChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/g;->a:Lcom/vivo/PCTools/Pcserver/ServerService;

    invoke-static {v0, p1}, Lcom/vivo/PCTools/Pcserver/ServerService;->a(Lcom/vivo/PCTools/Pcserver/ServerService;I)V

    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/e;->getInstance()Lcom/vivo/PCTools/Pcserver/e;

    move-result-object v1

    if-ne p1, v3, :cond_0

    iget-object v2, p0, Lcom/vivo/PCTools/Pcserver/g;->a:Lcom/vivo/PCTools/Pcserver/ServerService;

    invoke-static {v2}, Lcom/vivo/PCTools/Pcserver/ServerService;->a(Lcom/vivo/PCTools/Pcserver/ServerService;)Lcom/vivo/PCTools/Pcserver/j;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/vivo/PCTools/Pcserver/e;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/g;->a:Lcom/vivo/PCTools/Pcserver/ServerService;

    invoke-static {v1}, Lcom/vivo/PCTools/Pcserver/ServerService;->a(Lcom/vivo/PCTools/Pcserver/ServerService;)Lcom/vivo/PCTools/Pcserver/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/PCTools/Pcserver/j;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x8

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v2, "incomingCall"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "phoneSate"

    iget-object v3, p0, Lcom/vivo/PCTools/Pcserver/g;->a:Lcom/vivo/PCTools/Pcserver/ServerService;

    invoke-static {v3}, Lcom/vivo/PCTools/Pcserver/ServerService;->b(Lcom/vivo/PCTools/Pcserver/ServerService;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v0, Lcom/vivo/PCTools/Pcserver/ServerService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "incoming call number is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/g;->a:Lcom/vivo/PCTools/Pcserver/ServerService;

    invoke-static {v0}, Lcom/vivo/PCTools/Pcserver/ServerService;->a(Lcom/vivo/PCTools/Pcserver/ServerService;)Lcom/vivo/PCTools/Pcserver/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/Pcserver/j;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    invoke-static {v3}, Lcom/vivo/PCTools/e/c;->SetCallingState(Z)V

    sget-object v0, Lcom/vivo/PCTools/Pcserver/ServerService;->a:Ljava/lang/String;

    const-string v1, "accept call"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/g;->a:Lcom/vivo/PCTools/Pcserver/ServerService;

    invoke-static {v0}, Lcom/vivo/PCTools/Pcserver/ServerService;->a(Lcom/vivo/PCTools/Pcserver/ServerService;)Lcom/vivo/PCTools/Pcserver/j;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/Pcserver/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vivo/PCTools/e/c;->SetCallingState(Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/e;->getInstance()Lcom/vivo/PCTools/Pcserver/e;

    move-result-object v1

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/vivo/PCTools/Pcserver/g;->a:Lcom/vivo/PCTools/Pcserver/ServerService;

    invoke-static {v2}, Lcom/vivo/PCTools/Pcserver/ServerService;->a(Lcom/vivo/PCTools/Pcserver/ServerService;)Lcom/vivo/PCTools/Pcserver/j;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/vivo/PCTools/Pcserver/e;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/g;->a:Lcom/vivo/PCTools/Pcserver/ServerService;

    invoke-static {v1}, Lcom/vivo/PCTools/Pcserver/ServerService;->a(Lcom/vivo/PCTools/Pcserver/ServerService;)Lcom/vivo/PCTools/Pcserver/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/PCTools/Pcserver/j;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/g;->a:Lcom/vivo/PCTools/Pcserver/ServerService;

    invoke-static {v0}, Lcom/vivo/PCTools/Pcserver/ServerService;->a(Lcom/vivo/PCTools/Pcserver/ServerService;)Lcom/vivo/PCTools/Pcserver/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/Pcserver/j;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
