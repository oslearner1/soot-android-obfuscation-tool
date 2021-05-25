.class final Lcom/vivo/PCTools/MainActivity/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/b;->a:Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/b;->a:Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
