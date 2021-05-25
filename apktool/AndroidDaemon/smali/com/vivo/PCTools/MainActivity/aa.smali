.class final Lcom/vivo/PCTools/MainActivity/aa;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/aa;->a:Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/aa;->a:Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;

    invoke-virtual {v0}, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->finish()V

    :cond_0
    return-void
.end method
