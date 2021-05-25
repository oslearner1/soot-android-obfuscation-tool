.class final Lcom/vivo/PCTools/MainActivity/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/l;->a:Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/l;->a:Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;

    invoke-static {v1}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->c(Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;)Lcom/vivo/PCTools/j/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/PCTools/j/a;->cancel()V

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/l;->a:Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;

    invoke-virtual {v1}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->finish()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
