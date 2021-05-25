.class public Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/vivo/PCTools/j/a;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;)V
    .locals 2

    const-string v0, "share_app_tag"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->startActivity(Landroid/content/Intent;)V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->finish()V

    return-void
.end method

.method private a()Z
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const-string v0, "setting"

    invoke-virtual {p0, v0, v2}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->b:Landroid/content/SharedPreferences;

    const-string v1, "hasAuthorize"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;)Lcom/vivo/PCTools/j/a;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->a:Lcom/vivo/PCTools/j/a;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public IsFirstStart()Z
    .locals 4

    const/4 v3, 0x0

    const-string v0, "setting"

    invoke-virtual {p0, v0, v3}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "first"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->c:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "setting"

    invoke-virtual {p0, v0, v4}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->b:Landroid/content/SharedPreferences;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->c:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vivo/PCTools/j/a;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/j/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->a:Lcom/vivo/PCTools/j/a;

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->a:Lcom/vivo/PCTools/j/a;

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b013a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/j/a;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->a:Lcom/vivo/PCTools/j/a;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/j/a;->setCloseVisibility(I)V

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->a:Lcom/vivo/PCTools/j/a;

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/j/a;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->a:Lcom/vivo/PCTools/j/a;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/j/a;->addMessageView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->a:Lcom/vivo/PCTools/j/a;

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vivo/PCTools/MainActivity/j;

    invoke-direct {v2, p0}, Lcom/vivo/PCTools/MainActivity/j;-><init>(Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/vivo/PCTools/j/a;->setButton1(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->a:Lcom/vivo/PCTools/j/a;

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vivo/PCTools/MainActivity/k;

    invoke-direct {v2, p0}, Lcom/vivo/PCTools/MainActivity/k;-><init>(Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/vivo/PCTools/j/a;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->a:Lcom/vivo/PCTools/j/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/j/a;->show()V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->a:Lcom/vivo/PCTools/j/a;

    new-instance v1, Lcom/vivo/PCTools/MainActivity/l;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/MainActivity/l;-><init>(Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/j/a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BaseApplication;

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->a:Lcom/vivo/PCTools/j/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/BaseApplication;->SetAlertDialog(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->a:Lcom/vivo/PCTools/j/a;

    new-instance v1, Lcom/vivo/PCTools/MainActivity/m;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/MainActivity/m;-><init>(Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/j/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->d:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/PCTools/MainActivity/i;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/MainActivity/i;-><init>(Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RECOVERYCODE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_2

    const-string v0, "Request_Recovery"

    const-string v1, "pctool receive request to recovery data!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Request_Recovery"

    const-string v1, "pctool receive request to recovery data!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v0, v5}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/j;->getMsgId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-static {v0}, Lcom/vivo/PCTools/Pcserver/j;->PostToPC(Lcom/vivo/PCTools/q/a/a;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->IsFirstStart()Z

    goto :goto_0
.end method
