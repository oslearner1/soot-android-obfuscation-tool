.class final Landroid/support/v4/app/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v4/app/al;


# direct methods
.method constructor <init>(Landroid/support/v4/app/al;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/am;->a:Landroid/support/v4/app/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/am;->a:Landroid/support/v4/app/al;

    invoke-static {v0}, Landroid/support/v4/app/al;->a(Landroid/support/v4/app/al;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/view/av;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method
