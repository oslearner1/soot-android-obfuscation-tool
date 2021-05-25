.class final Lcom/vivo/PCTools/MainActivity/ab;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/ab;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.requests_wifi_connect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "WifiConnectActivity"

    const-string v1, "++++++++++++receive action"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.vivo.PCTools.connect_state_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/ab;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    invoke-static {}, Lcom/vivo/PCTools/BaseApplication;->getInstance()Lcom/vivo/PCTools/BaseApplication;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->a(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;Lcom/vivo/PCTools/BaseApplication;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/ab;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    const v1, 0x7f0a002e

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "MyBool"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PCHelperConnnected:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/PCTools/MainActivity/ab;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    invoke-static {v3}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->a(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)Lcom/vivo/PCTools/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/PCTools/BaseApplication;->isPCHelperConnnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isUSBMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/PCTools/MainActivity/ab;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    invoke-static {v3}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->a(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)Lcom/vivo/PCTools/BaseApplication;

    move-result-object v3

    iget-boolean v3, v3, Lcom/vivo/PCTools/BaseApplication;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/ab;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    invoke-static {v1}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->a(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)Lcom/vivo/PCTools/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/PCTools/BaseApplication;->isPCHelperConnnected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/ab;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    invoke-static {v1}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->a(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)Lcom/vivo/PCTools/BaseApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/vivo/PCTools/BaseApplication;->f:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
