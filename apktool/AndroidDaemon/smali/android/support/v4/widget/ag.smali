.class final Landroid/support/v4/widget/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private synthetic a:Landroid/support/v4/widget/ad;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ad;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/ag;->a:Landroid/support/v4/widget/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/ag;->a:Landroid/support/v4/widget/ad;

    invoke-virtual {v0}, Landroid/support/v4/widget/ad;->invalidateSelf()V

    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/ag;->a:Landroid/support/v4/widget/ad;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v4/widget/ad;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/ag;->a:Landroid/support/v4/widget/ad;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/ad;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
