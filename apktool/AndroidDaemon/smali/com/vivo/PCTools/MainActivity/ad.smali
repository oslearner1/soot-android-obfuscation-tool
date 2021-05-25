.class final Lcom/vivo/PCTools/MainActivity/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/ad;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/ad;->a:Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    invoke-virtual {v0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->finish()V

    return-void
.end method
