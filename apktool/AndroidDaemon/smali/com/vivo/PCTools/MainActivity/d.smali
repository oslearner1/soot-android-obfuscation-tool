.class final Lcom/vivo/PCTools/MainActivity/d;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/d;->a:Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/d;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/d;->a:Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;

    invoke-virtual {v0}, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->updateUi()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/d;->removeMessages(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
