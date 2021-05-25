.class final Lcom/vivo/PCTools/MainActivity/e;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/e;->a:Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "FTPConnectActivity"

    const-string v1, "Wifi status broadcast received"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/e;->a:Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;

    invoke-virtual {v0}, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->updateUi()V

    return-void
.end method
