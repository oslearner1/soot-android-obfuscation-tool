.class final Landroid/support/v4/app/ax;
.super Landroid/transition/Transition$EpicenterCallback;


# instance fields
.field private a:Landroid/graphics/Rect;

.field private synthetic b:Landroid/support/v4/app/az;


# direct methods
.method constructor <init>(Landroid/support/v4/app/az;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/ax;->b:Landroid/support/v4/app/az;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ax;->a:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/ax;->b:Landroid/support/v4/app/az;

    iget-object v0, v0, Landroid/support/v4/app/az;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/ax;->b:Landroid/support/v4/app/az;

    iget-object v0, v0, Landroid/support/v4/app/az;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/a;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ax;->a:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ax;->a:Landroid/graphics/Rect;

    return-object v0
.end method
