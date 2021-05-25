.class final Lcom/vivo/PCTools/MainActivity/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/af;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    iput-boolean p2, p0, Lcom/vivo/PCTools/MainActivity/af;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/PCTools/MainActivity/af;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/af;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->b(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
