.class public Landroid/support/v4/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/support/v4/view/ad;
.implements Landroid/support/v4/view/af;
.implements Landroid/support/v4/view/ap;


# static fields
.field private static final v:Landroid/support/v4/widget/ai;

.field private static final w:[I


# instance fields
.field private A:Landroid/support/v4/media/routing/d;

.field private a:J

.field private final b:Landroid/graphics/Rect;

.field private c:Landroid/support/v4/widget/ak;

.field private d:Landroid/support/v4/widget/x;

.field private e:Landroid/support/v4/widget/x;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Landroid/view/View;

.field private j:Z

.field private k:Landroid/view/VelocityTracker;

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private final r:[I

.field private final s:[I

.field private t:I

.field private u:Landroid/support/v4/widget/NestedScrollView$SavedState;

.field private final x:Landroid/support/v4/view/ag;

.field private final y:Landroid/support/v4/view/ae;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/support/v4/widget/ai;

    invoke-direct {v0}, Landroid/support/v4/widget/ai;-><init>()V

    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->v:Landroid/support/v4/widget/ai;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->w:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->g:Z

    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->h:Z

    iput-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->i:Landroid/view/View;

    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->m:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->s:[I

    new-instance v0, Landroid/support/v4/widget/ak;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/support/v4/widget/ak;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ak;

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->n:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->o:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->p:I

    sget-object v0, Landroid/support/v4/widget/NestedScrollView;->w:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->setFillViewport(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/support/v4/view/ag;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ag;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->x:Landroid/support/v4/view/ag;

    new-instance v0, Landroid/support/v4/view/ae;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ae;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/ae;

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    sget-object v0, Landroid/support/v4/widget/NestedScrollView;->v:Landroid/support/v4/widget/ai;

    invoke-static {p0, v0}, Landroid/support/v4/view/av;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/a;)V

    return-void
.end method

.method private a(Landroid/graphics/Rect;)I
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    add-int v1, v0, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    add-int/2addr v0, v4

    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2

    sub-int/2addr v1, v4

    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v1, :cond_4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v3, :cond_3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    goto :goto_1

    :cond_4
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v0, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v2, v3, :cond_5

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    rsub-int/lit8 v0, v0, 0x0

    :goto_3
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_5
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x0

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/v4/widget/NestedScrollView;)I
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->m:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-static {p1, v0}, Landroid/support/v4/view/y;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/y;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->f:I

    invoke-static {p1, v0}, Landroid/support/v4/view/y;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(III)Z
    .locals 16

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v9

    add-int v10, v9, v1

    const/16 v1, 0x21

    move/from16 v0, p1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/4 v1, 0x0

    move v8, v1

    :goto_1
    if-ge v8, v12, :cond_8

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v13

    move/from16 v0, p2

    if-ge v0, v13, :cond_d

    move/from16 v0, p3

    if-ge v7, v0, :cond_d

    move/from16 v0, p2

    if-ge v0, v7, :cond_1

    move/from16 v0, p3

    if-ge v13, v0, :cond_1

    const/4 v3, 0x1

    :goto_2
    if-nez v5, :cond_2

    move v15, v3

    move-object v3, v1

    move v1, v15

    :goto_3
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move-object v5, v3

    move v4, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v14

    if-lt v7, v14, :cond_4

    :cond_3
    if-nez v2, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v13, v7, :cond_5

    :cond_4
    const/4 v7, 0x1

    :goto_4
    if-eqz v4, :cond_6

    if-eqz v3, :cond_d

    if-eqz v7, :cond_d

    move-object v3, v1

    move v1, v4

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    :cond_6
    if-eqz v3, :cond_7

    const/4 v3, 0x1

    move v15, v3

    move-object v3, v1

    move v1, v15

    goto :goto_3

    :cond_7
    if-eqz v7, :cond_d

    move-object v3, v1

    move v1, v4

    goto :goto_3

    :cond_8
    if-nez v5, :cond_9

    move-object/from16 v5, p0

    :cond_9
    move/from16 v0, p2

    if-lt v0, v9, :cond_b

    move/from16 v0, p3

    if-gt v0, v10, :cond_b

    const/4 v1, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v2

    if-eq v5, v2, :cond_a

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/view/View;->requestFocus(I)Z

    :cond_a
    return v1

    :cond_b
    if-eqz v2, :cond_c

    sub-int v1, p2, v9

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(I)V

    move v1, v6

    goto :goto_5

    :cond_c
    sub-int v1, p3, v10

    goto :goto_6

    :cond_d
    move v1, v4

    move-object v3, v5

    goto :goto_3
.end method

.method private a(IIIIIIII)Z
    .locals 9

    invoke-static {p0}, Landroid/support/v4/view/av;->getOverScrollMode(Landroid/view/View;)I

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollRange()I

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollRange()I

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollExtent()I

    add-int v1, p3, p1

    add-int v3, p4, p2

    add-int/lit8 v2, p6, 0x0

    const/4 v0, 0x0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    const/4 v0, 0x1

    move v8, v0

    :goto_0
    const/4 v0, 0x0

    if-le v3, v2, :cond_3

    const/4 v0, 0x1

    move v7, v0

    :goto_1
    if-eqz v7, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ak;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/widget/ak;->springBack(IIIIII)Z

    :cond_0
    invoke-virtual {p0, v1, v2, v8, v7}, Landroid/support/v4/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    if-nez v8, :cond_1

    if-eqz v7, :cond_4

    :cond_1
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_2
    if-gez v1, :cond_6

    const/4 v1, 0x0

    const/4 v0, 0x1

    move v8, v0

    goto :goto_0

    :cond_3
    if-gez v3, :cond_5

    const/4 v2, 0x0

    const/4 v0, 0x1

    move v7, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    move v7, v0

    move v2, v3

    goto :goto_1

    :cond_6
    move v8, v0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Rect;Z)Z
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private a(Landroid/view/View;II)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(III)I
    .locals 1

    if-ge p1, p2, :cond_0

    if-gez p0, :cond_2

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0

    :cond_2
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_0

    if-lez p1, :cond_3

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_1

    if-gez p1, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    int-to-float v1, p1

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_2

    int-to-float v1, p1

    invoke-virtual {p0, v2, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->fling(I)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->b()V

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/x;

    invoke-virtual {v0}, Landroid/support/v4/widget/x;->onRelease()Z

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/x;

    invoke-virtual {v0}, Landroid/support/v4/widget/x;->onRelease()Z

    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/support/v4/view/av;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/x;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/support/v4/widget/x;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/x;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/x;

    new-instance v1, Landroid/support/v4/widget/x;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/x;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/x;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/x;

    iput-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/x;

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 5

    iget v0, p0, Landroid/support/v4/widget/NestedScrollView;->z:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->z:F

    :cond_1
    iget v0, p0, Landroid/support/v4/widget/NestedScrollView;->z:F

    return v0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public arrowScroll(I)Z
    .locals 7

    const/16 v6, 0x82

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v1

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v1, v4}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v1}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(I)V

    invoke-virtual {v3, p1}, Landroid/view/View;->requestFocus(I)Z

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestFocus()Z

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/16 v3, 0x21

    if-ne p1, v3, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    if-ge v3, v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    :cond_3
    :goto_2
    if-nez v1, :cond_5

    move v0, v2

    goto :goto_1

    :cond_4
    if-ne p1, v6, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v5, v3, v4

    if-ge v5, v1, :cond_3

    sub-int v1, v3, v4

    goto :goto_2

    :cond_5
    if-ne p1, v6, :cond_6

    :goto_3
    invoke-direct {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(I)V

    goto :goto_0

    :cond_6
    neg-int v1, v1

    goto :goto_3
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 11

    const/4 v0, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ak;

    invoke-virtual {v1}, Landroid/support/v4/widget/ak;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ak;

    invoke-virtual {v1}, Landroid/support/v4/widget/ak;->getCurrX()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ak;

    invoke-virtual {v2}, Landroid/support/v4/widget/ak;->getCurrY()I

    move-result v10

    if-ne v3, v1, :cond_0

    if-eq v4, v10, :cond_2

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    invoke-static {p0}, Landroid/support/v4/view/av;->getOverScrollMode(Landroid/view/View;)I

    move-result v2

    if-eqz v2, :cond_1

    if-ne v2, v0, :cond_3

    if-lez v6, :cond_3

    :cond_1
    move v9, v0

    :goto_0
    sub-int/2addr v1, v3

    sub-int v2, v10, v4

    move-object v0, p0

    move v7, v5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/widget/NestedScrollView;->a(IIIIIIII)Z

    if-eqz v9, :cond_2

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->d()V

    if-gtz v10, :cond_4

    if-lez v4, :cond_4

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/x;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ak;

    invoke-virtual {v1}, Landroid/support/v4/widget/ak;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/x;->onAbsorb(I)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v9, v5

    goto :goto_0

    :cond_4
    if-lt v10, v6, :cond_2

    if-ge v4, v6, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/x;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ak;

    invoke-virtual {v1}, Landroid/support/v4/widget/ak;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/x;->onAbsorb(I)Z

    goto :goto_1
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int v1, v0, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-gez v2, :cond_2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_2
    if-le v2, v1, :cond_0

    sub-int v1, v2, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/ae;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/ae;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/ae;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ae;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/ae;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/ae;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/ae;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ae;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/x;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/x;

    invoke-virtual {v1}, Landroid/support/v4/widget/x;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/x;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/widget/x;->setSize(II)V

    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/x;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/x;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/av;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/x;

    invoke-virtual {v1}, Landroid/support/v4/widget/x;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    neg-int v4, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43340000    # 180.0f

    int-to-float v4, v2

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/x;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/widget/x;->setSize(II)V

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/x;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/av;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    const/4 v3, 0x1

    const/16 v0, 0x21

    const/16 v1, 0x82

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v4, v6

    if-ge v5, v4, :cond_2

    move v4, v3

    :goto_0
    if-nez v4, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    :goto_1
    return v2

    :cond_2
    move v4, v2

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_5
    :goto_2
    move v0, v2

    :goto_3
    move v2, v0

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    move-result v0

    goto :goto_3

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    move-result v0

    goto :goto_3

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_4
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->pageScroll(I)Z

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 11

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v1

    sub-int v4, v0, v1

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ak;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v4, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v10}, Landroid/support/v4/widget/ak;->fling(IIIIIIIIII)V

    invoke-static {p0}, Landroid/support/v4/view/av;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public fullScroll(I)Z
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(III)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v1, v2, v1

    if-ge v1, v0, :cond_1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->x:Landroid/support/v4/view/ag;

    invoke-virtual {v0}, Landroid/support/v4/view/ag;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isFillViewport()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->l:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->m:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->h:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/support/v4/view/y;->getSource(Landroid/view/MotionEvent;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-boolean v1, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-nez v1, :cond_0

    const/16 v1, 0x9

    invoke-static {p1, v1}, Landroid/support/v4/view/y;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v2, v1

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int v2, v3, v2

    if-gez v2, :cond_2

    move v1, v0

    :cond_1
    :goto_1
    if-eq v1, v3, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-gt v2, v1, :cond_1

    move v1, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_0

    iget-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    goto :goto_0

    :pswitch_1
    iget v1, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    if-eq v1, v4, :cond_1

    invoke-static {p1, v1}, Landroid/support/v4/view/y;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    const-string v0, "NestedScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid pointerId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-static {p1, v2}, Landroid/support/v4/view/y;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/support/v4/widget/NestedScrollView;->f:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, p0, Landroid/support/v4/widget/NestedScrollView;->n:I

    if-le v2, v4, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->f:I

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->a()V

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v3, p0, Landroid/support/v4/widget/NestedScrollView;->t:I

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v2, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v6, v4

    if-lt v2, v6, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v4, v6, v4

    if-ge v2, v4, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt v1, v4, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    if-ge v1, v4, :cond_3

    move v1, v0

    :goto_2
    if-nez v1, :cond_5

    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->b()V

    goto/16 :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    iput v2, p0, Landroid/support/v4/widget/NestedScrollView;->f:I

    invoke-static {p1, v3}, Landroid/support/v4/view/y;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-nez v1, :cond_7

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    :goto_3
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ak;

    invoke-virtual {v1}, Landroid/support/v4/widget/ak;->isFinished()Z

    move-result v1

    if-nez v1, :cond_6

    move v3, v0

    :cond_6
    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_3

    :pswitch_3
    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    iput v4, p0, Landroid/support/v4/widget/NestedScrollView;->q:I

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->b()V

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ak;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/widget/ak;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p0}, Landroid/support/v4/view/av;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iput-boolean v1, p0, Landroid/support/v4/widget/NestedScrollView;->g:Z

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->i:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->i:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->b(Landroid/view/View;)V

    :cond_0
    iput-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->i:Landroid/view/View;

    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->u:Landroid/support/v4/widget/NestedScrollView$SavedState;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->u:Landroid/support/v4/widget/NestedScrollView$SavedState;

    iget v2, v2, Landroid/support/v4/widget/NestedScrollView$SavedState;->a:I

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    iput-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->u:Landroid/support/v4/widget/NestedScrollView$SavedState;

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    sub-int v2, p5, p3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-le v2, v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->h:Z

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-gez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->l:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-ge v0, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v3, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    if-nez p4, :cond_0

    float-to-int v0, p3

    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->b(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, p5}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int v4, p5, v2

    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->x:Landroid/support/v4/view/ag;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/ag;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const/16 p1, 0x82

    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_4

    :cond_1
    :goto_2
    return v0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 p1, 0x21

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->u:Landroid/support/v4/widget/NestedScrollView$SavedState;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    iput v0, v1, Landroid/support/v4/widget/NestedScrollView$SavedState;->a:I

    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->A:Landroid/support/v4/media/routing/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->A:Landroid/support/v4/media/routing/d;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/media/routing/d;->onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->a(I)V

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

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
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->x:Landroid/support/v4/view/ag;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ag;->onStopNestedScroll(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->a()V

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/y;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v4/widget/NestedScrollView;->t:I

    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->t:I

    int-to-float v4, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    const/4 v2, 0x1

    :goto_1
    return v2

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ak;

    invoke-virtual {v2}, Landroid/support/v4/widget/ak;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ak;

    invoke-virtual {v2}, Landroid/support/v4/widget/ak;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ak;

    invoke-virtual {v2}, Landroid/support/v4/widget/ak;->abortAnimation()V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/y;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/y;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v17

    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    const-string v2, "NestedScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid pointerId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in onTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/y;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    float-to-int v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/widget/NestedScrollView;->s:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/widget/NestedScrollView;->s:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v2, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->t:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/widget/NestedScrollView;->t:I

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-nez v4, :cond_15

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/widget/NestedScrollView;->n:I

    if-le v4, v5, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_9

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->n:I

    sub-int/2addr v2, v4

    move v4, v2

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    const/4 v5, 0x1

    aget v2, v2, v5

    sub-int v2, v3, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v18

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/av;->getOverScrollMode(Landroid/view/View;)I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    if-lez v8, :cond_d

    :cond_a
    const/4 v2, 0x1

    move v15, v2

    :goto_4
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Landroid/support/v4/widget/NestedScrollView;->a(IIIIIIII)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->hasNestedScrollingParent()Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int v11, v2, v18

    sub-int v13, v4, v11

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->t:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->r:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->t:I

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->n:I

    add-int/2addr v2, v4

    move v4, v2

    goto/16 :goto_3

    :cond_d
    const/4 v2, 0x0

    move v15, v2

    goto :goto_4

    :cond_e
    if-eqz v15, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->d()V

    add-int v2, v18, v4

    if-gez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/x;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/y;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/x;->onPull(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/x;

    invoke-virtual {v2}, Landroid/support/v4/widget/x;->isFinished()Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/x;

    invoke-virtual {v2}, Landroid/support/v4/widget/x;->onRelease()Z

    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/x;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/x;

    invoke-virtual {v2}, Landroid/support/v4/widget/x;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/x;

    invoke-virtual {v2}, Landroid/support/v4/widget/x;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_10
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/av;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_11
    if-le v2, v8, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->e:Landroid/support/v4/widget/x;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/y;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/x;->onPull(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/x;

    invoke-virtual {v2}, Landroid/support/v4/widget/x;->isFinished()Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->d:Landroid/support/v4/widget/x;

    invoke-virtual {v2}, Landroid/support/v4/widget/x;->onRelease()Z

    goto :goto_5

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->p:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    invoke-static {v2, v3}, Landroid/support/v4/view/ar;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/NestedScrollView;->o:I

    if-le v3, v4, :cond_13

    neg-int v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->b(I)V

    :cond_12
    :goto_6
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->c()V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ak;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/widget/ak;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/av;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_6

    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ak;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/widget/ak;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/av;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_14
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->c()V

    goto/16 :goto_0

    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/y;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/y;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/y;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    goto/16 :goto_0

    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->q:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/y;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/y;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->f:I

    goto/16 :goto_0

    :cond_15
    move v4, v2

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v1, v3, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->a(III)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->g:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->b(Landroid/view/View;)V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_0
    iput-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->i:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->b()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->g:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->b(III)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p2, v2, v0}, Landroid/support/v4/widget/NestedScrollView;->b(III)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-eq v0, v2, :cond_1

    :cond_0
    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->l:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->l:Z

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/ae;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ae;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnScrollChangeListener$1975585(Landroid/support/v4/media/routing/d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->A:Landroid/support/v4/media/routing/d;

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->m:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v4/widget/NestedScrollView;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v0, v1, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int v2, v1, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v0, v1

    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ak;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/support/v4/widget/ak;->startScroll(IIII)V

    invoke-static {p0}, Landroid/support/v4/view/av;->postInvalidateOnAnimation(Landroid/view/View;)V

    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/NestedScrollView;->a:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ak;

    invoke-virtual {v0}, Landroid/support/v4/widget/ak;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->c:Landroid/support/v4/widget/ak;

    invoke-virtual {v0}, Landroid/support/v4/widget/ak;->abortAnimation()V

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/ae;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ae;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->y:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->stopNestedScroll()V

    return-void
.end method
