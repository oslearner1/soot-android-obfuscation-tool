.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/support/v4/view/ad;
.implements Landroid/support/v4/view/af;


# static fields
.field private static final c:Ljava/lang/String;

.field private static final x:[I


# instance fields
.field private A:F

.field private B:Landroid/support/v4/widget/ad;

.field private C:Landroid/view/animation/Animation;

.field private D:Landroid/view/animation/Animation;

.field private E:Landroid/view/animation/Animation;

.field private F:Landroid/view/animation/Animation;

.field private G:Landroid/view/animation/Animation;

.field private H:F

.field private I:Z

.field private J:I

.field private K:I

.field private L:Z

.field private M:Landroid/view/animation/Animation$AnimationListener;

.field private final N:Landroid/view/animation/Animation;

.field private final O:Landroid/view/animation/Animation;

.field protected a:I

.field protected b:I

.field private d:Landroid/view/View;

.field private e:Landroid/support/v4/media/routing/d;

.field private f:Z

.field private g:I

.field private h:F

.field private i:F

.field private final j:Landroid/support/v4/view/ag;

.field private final k:Landroid/support/v4/view/ae;

.field private final l:[I

.field private final m:[I

.field private n:Z

.field private o:I

.field private p:I

.field private q:Z

.field private r:F

.field private s:F

.field private t:Z

.field private u:I

.field private v:Z

.field private final w:Landroid/view/animation/DecelerateInterpolator;

.field private y:Landroid/support/v4/widget/d;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v1, -0x1

    const v5, -0x50506

    const/high16 v3, 0x42200000    # 40.0f

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:[I

    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    new-instance v0, Landroid/support/v4/widget/ax;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ax;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Landroid/support/v4/widget/bc;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/bc;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->N:Landroid/view/animation/Animation;

    new-instance v0, Landroid/support/v4/widget/bd;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/bd;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:I

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:Landroid/view/animation/DecelerateInterpolator;

    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:I

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:I

    new-instance v1, Landroid/support/v4/widget/d;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {v1, v2, v5, v3}, Landroid/support/v4/widget/d;-><init>(Landroid/content/Context;IF)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    new-instance v1, Landroid/support/v4/widget/ad;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/support/v4/widget/ad;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    invoke-virtual {v1, v5}, Landroid/support/v4/widget/ad;->setBackgroundColor(I)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/d;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    invoke-static {p0, v4}, Landroid/support/v4/view/av;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    const/high16 v1, 0x42800000    # 64.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:F

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:F

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    new-instance v0, Landroid/support/v4/view/ag;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ag;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Landroid/support/v4/view/ag;

    new-instance v0, Landroid/support/v4/view/ae;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ae;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/ae;

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method private static a(Landroid/view/MotionEvent;I)F
    .locals 1

    invoke-static {p0, p1}, Landroid/support/v4/view/y;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    if-gez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, v0}, Landroid/support/v4/view/y;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    goto :goto_0
.end method

.method private a(II)Landroid/view/animation/Animation;
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/support/v4/widget/ba;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/widget/ba;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/d;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(F)V
    .locals 14

    const/high16 v6, 0x40800000    # 4.0f

    const v13, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ad;->showArrow(Z)V

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v0, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    sub-float v3, v0, v3

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:F

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    :goto_0
    mul-float v4, v0, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v0

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float v4, v3, v6

    float-to-double v4, v4

    div-float/2addr v3, v6

    float-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double v3, v4, v6

    double-to-float v3, v3

    mul-float/2addr v3, v11

    mul-float v4, v0, v3

    mul-float/2addr v4, v11

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v5

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/d;->setVisibility(I)V

    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-static {v1, v10}, Landroid/support/v4/view/av;->setScaleX(Landroid/view/View;F)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-static {v1, v10}, Landroid/support/v4/view/av;->setScaleY(Landroid/view/View;F)V

    :cond_1
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_6

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    div-float v1, p1, v1

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    invoke-virtual {v1}, Landroid/support/v4/widget/ad;->getAlpha()I

    move-result v1

    const/16 v4, 0x4c

    if-le v1, v4, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    invoke-virtual {v1}, Landroid/support/v4/widget/ad;->getAlpha()I

    move-result v1

    const/16 v4, 0x4c

    invoke-direct {p0, v1, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(II)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    :cond_3
    mul-float v1, v2, v13

    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v4, v12, v1}, Landroid/support/v4/widget/ad;->setStartEndTrim(FF)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/ad;->setArrowScale(F)V

    :cond_4
    :goto_1
    const/high16 v1, -0x41800000    # -0.25f

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    mul-float v2, v3, v11

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ad;->setProgressRotation(F)V

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    return-void

    :cond_5
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:F

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    invoke-virtual {v1}, Landroid/support/v4/widget/ad;->getAlpha()I

    move-result v1

    const/16 v4, 0xff

    if-ge v1, v4, :cond_4

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:Landroid/view/animation/Animation;

    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    invoke-virtual {v1}, Landroid/support/v4/widget/ad;->getAlpha()I

    move-result v1

    const/16 v4, 0xff

    invoke-direct {p0, v1, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(II)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:Landroid/view/animation/Animation;

    goto :goto_1
.end method

.method private a(IZ)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->bringToFront()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->offsetTopAndBottom(I)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;I)V
    .locals 1

    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {p1}, Landroid/support/v4/view/y;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/y;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/y;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    new-instance v0, Landroid/support/v4/widget/az;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/az;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private a(ZZ)V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-eq v0, p1, :cond_1

    iput-boolean p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Z

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Landroid/view/animation/Animation$AnimationListener;

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->N:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->N:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->N:Landroid/view/animation/Animation;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->N:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private static a()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    return v0
.end method

.method private static a(Landroid/view/animation/Animation;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v4/widget/SwipeRefreshLayout;I)I
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    return p1
.end method

.method static synthetic b(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/ad;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(F)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-direct {p0, v2, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ZZ)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/widget/ad;->setStartEndTrim(FF)V

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    if-nez v1, :cond_1

    new-instance v0, Landroid/support/v4/widget/bb;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/bb;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    :cond_1
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    if-eqz v2, :cond_4

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    invoke-static {}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    invoke-virtual {v1}, Landroid/support/v4/widget/ad;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:F

    :goto_1
    new-instance v1, Landroid/support/v4/widget/be;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/be;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/d;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/ad;->showArrow(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-static {v1}, Landroid/support/v4/view/av;->getScaleX(Landroid/view/View;)F

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:F

    goto :goto_1

    :cond_4
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/d;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_5
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method

.method static synthetic b(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 3

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    return-void
.end method

.method static synthetic c(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Z

    return v0
.end method

.method static synthetic d(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/media/routing/d;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/support/v4/media/routing/d;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/d;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    return v0
.end method

.method static synthetic g(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    return v0
.end method

.method static synthetic h(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Z

    return v0
.end method

.method static synthetic i(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:F

    return v0
.end method

.method static synthetic j(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:F

    return v0
.end method

.method private setAnimationProgress(F)V
    .locals 1

    invoke-static {}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-static {v0, p1}, Landroid/support/v4/view/av;->setScaleX(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-static {v0, p1}, Landroid/support/v4/view/av;->setScaleY(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private setColorViewAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ad;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_5

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/av;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/av;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/ae;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/ae;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/ae;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ae;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/ae;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/ae;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/ae;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ae;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    iget p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    if-lt p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Landroid/support/v4/view/ag;

    invoke-virtual {v0}, Landroid/support/v4/view/ag;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    invoke-static {p1}, Landroid/support/v4/view/y;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    goto :goto_0

    :pswitch_1
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v2}, Landroid/support/v4/widget/d;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    invoke-static {p1, v0}, Landroid/support/v4/view/y;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    invoke-static {p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:F

    goto :goto_1

    :pswitch_2
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    if-ne v1, v4, :cond_3

    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string v2, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    invoke-static {p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:F

    sub-float v0, v1, v0

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:F

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:F

    iput-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ad;->setAlpha(I)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_4
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    add-int/2addr v5, v3

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->layout(IIII)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v2}, Landroid/support/v4/widget/d;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    div-int/lit8 v4, v0, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/support/v4/widget/d;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/d;->measure(II)V

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    if-ne v1, v2, :cond_4

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:I

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    invoke-virtual {p0, p2, p3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-lez p3, :cond_0

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    int-to-float v0, p3

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    float-to-int v0, v0

    sub-int v0, p3, v0

    aput v0, p4, v4

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    :goto_0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(F)V

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Z

    if-eqz v0, :cond_1

    if-lez p3, :cond_1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    aget v0, p4, v4

    sub-int v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:[I

    aget v1, p4, v5

    sub-int v1, p2, v1

    aget v2, p4, v4

    sub-int v2, p3, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    aget v1, p4, v5

    aget v2, v0, v5

    add-int/2addr v1, v2

    aput v1, p4, v5

    aget v1, p4, v4

    aget v0, v0, v4

    add-int/2addr v0, v1

    aput v0, p4, v4

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    aput p3, p4, v4

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/2addr v0, p5

    if-gez v0, :cond_0

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(F)V

    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Landroid/support/v4/view/ag;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/ag;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-nez v0, :cond_0

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Landroid/support/v4/view/ag;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ag;->onStopNestedScroll(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:Z

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(F)V

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/support/v4/view/y;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v0}, Landroid/support/v4/view/y;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    goto :goto_1

    :pswitch_3
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    invoke-static {p1, v1}, Landroid/support/v4/view/y;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    if-gez v1, :cond_3

    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string v2, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p1, v1}, Landroid/support/v4/view/y;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(F)V

    goto :goto_1

    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/y;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    if-gez v1, :cond_4

    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string v2, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-static {p1, v1}, Landroid/support/v4/view/y;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_6
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    invoke-static {p1, v1}, Landroid/support/v4/view/y;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    if-gez v1, :cond_5

    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string v2, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-static {p1, v1}, Landroid/support/v4/view/y;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(F)V

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/av;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ad;->setColorSchemeColors([I)V

    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    array-length v0, p1

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    aget v3, p1, v0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/ae;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ae;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnRefreshListener$200abd6d(Landroid/support/v4/media/routing/d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/support/v4/media/routing/d;

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->setBackgroundColor(I)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ad;->setBackgroundColor(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 1

    int-to-float v0, p2

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:F

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->invalidate()V

    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 2

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setVisibility(I)V

    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    int-to-float v0, p3

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->invalidate()V

    return-void
.end method

.method public setRefreshing(Z)V
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:F

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Landroid/view/animation/Animation$AnimationListener;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/d;->setVisibility(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/ad;->setAlpha(I)V

    :cond_0
    new-instance v1, Landroid/support/v4/widget/ay;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/ay;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation;

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/d;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void

    :cond_2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:F

    float-to-int v0, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ZZ)V

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez p1, :cond_1

    const/high16 v1, 0x42600000    # 56.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:I

    :goto_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ad;->updateSizes(I)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/support/v4/widget/ad;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:I

    goto :goto_1
.end method

.method public startNestedScroll(I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/ae;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ae;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->stopNestedScroll()V

    return-void
.end method
