.class public Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->a:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->b:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "PCTools"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->a:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Complete"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Complete"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->b:Z

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "com.iqoo.secure"

    invoke-static {p0, v0}, Lcom/vivo/PCTools/util/a;->getVerCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    const-string v0, "PasswordCheckedActivity"

    const-string v1, "PasswordCheckedActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.iqoo.secure"

    const-string v2, "com.iqoo.secure.safeguard.PasswordActivity2"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "password_bundle"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "toPackageName"

    const-string v2, "com.vivo.PCTools"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "toClassNameAll"

    const-string v2, "com.vivo.PCTools.MainActivity.PasswordCheckedActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x80000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x40000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->setContentView(I)V

    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vivo/PCTools/MainActivity/x;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/MainActivity/x;-><init>(Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vivo/PCTools/MainActivity/y;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/MainActivity/y;-><init>(Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->b:Z

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->a:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-boolean v0, p0, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->b:Z

    invoke-static {v0}, Lcom/vivo/PCTools/h/a;->passwdchecksuccess(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "Complete"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Complete"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->b:Z

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->finish()V

    :cond_0
    return-void
.end method
