.class public Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/vivo/PCTools/MainActivity/z;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/MainActivity/z;-><init>(Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;)V

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->b:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/vivo/PCTools/MainActivity/aa;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/MainActivity/aa;-><init>(Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->a:Landroid/content/Context;

    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b00fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Landroid/support/v4/view/ae;->startServerService(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0, p0}, Lcom/vivo/PCTools/BaseApplication;->setmUsbConnectActivityInstance(Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BaseApplication;

    sget-object v1, Lcom/vivo/PCTools/BaseApplication$AppState;->USB:Lcom/vivo/PCTools/BaseApplication$AppState;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/BaseApplication;->setAppState(Lcom/vivo/PCTools/BaseApplication$AppState;)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UsbConnectActivity"

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "UsbConnectActivity"

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "usb"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "UsbConnectActivity"

    const-string v2, "start from PC"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "UsbConnectActivity"

    const-string v1, "on destory"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0}, Lcom/vivo/PCTools/BaseApplication;->setActivityInstanceNull()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {p0}, Landroid/support/v4/view/ae;->startServerService(Landroid/content/Context;)V

    return-void
.end method
