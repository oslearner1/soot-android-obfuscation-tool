.class final Lcom/vivo/PCTools/MainActivity/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/j;->a:Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/j;->a:Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->b(Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasAuthorize"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/j;->getMsgId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    const-string v1, "authorize_ok"

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->debug(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vivo/PCTools/Pcserver/j;->PostToPC(Lcom/vivo/PCTools/q/a/a;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/j;->a:Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->a(Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;)V

    return-void
.end method
