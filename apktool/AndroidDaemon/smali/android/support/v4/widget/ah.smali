.class final Landroid/support/v4/widget/ah;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/drawable/Drawable$Callback;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:[I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:Z

.field private p:Landroid/graphics/Path;

.field private q:F

.field private r:D

.field private s:I

.field private t:I

.field private u:I

.field private final v:Landroid/graphics/Paint;

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ah;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ah;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ah;->c:Landroid/graphics/Paint;

    iput v1, p0, Landroid/support/v4/widget/ah;->e:F

    iput v1, p0, Landroid/support/v4/widget/ah;->f:F

    iput v1, p0, Landroid/support/v4/widget/ah;->g:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Landroid/support/v4/widget/ah;->h:F

    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Landroid/support/v4/widget/ah;->i:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/widget/ah;->v:Landroid/graphics/Paint;

    iput-object p1, p0, Landroid/support/v4/widget/ah;->d:Landroid/graphics/drawable/Drawable$Callback;

    iget-object v0, p0, Landroid/support/v4/widget/ah;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Landroid/support/v4/widget/ah;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/support/v4/widget/ah;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/support/v4/widget/ah;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/support/v4/widget/ah;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a()I
    .locals 2

    iget v0, p0, Landroid/support/v4/widget/ah;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/v4/widget/ah;->j:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ah;->d:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 11

    const/high16 v4, 0x43b40000    # 360.0f

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    iget-object v1, p0, Landroid/support/v4/widget/ah;->a:Landroid/graphics/RectF;

    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v0, p0, Landroid/support/v4/widget/ah;->i:F

    iget v2, p0, Landroid/support/v4/widget/ah;->i:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget v0, p0, Landroid/support/v4/widget/ah;->e:F

    iget v2, p0, Landroid/support/v4/widget/ah;->g:F

    add-float/2addr v0, v2

    mul-float v2, v0, v4

    iget v0, p0, Landroid/support/v4/widget/ah;->f:F

    iget v3, p0, Landroid/support/v4/widget/ah;->g:F

    add-float/2addr v0, v3

    mul-float/2addr v0, v4

    sub-float v3, v0, v2

    iget-object v0, p0, Landroid/support/v4/widget/ah;->b:Landroid/graphics/Paint;

    iget v4, p0, Landroid/support/v4/widget/ah;->x:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v4/widget/ah;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Landroid/support/v4/widget/ah;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/ah;->p:Landroid/graphics/Path;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ah;->p:Landroid/graphics/Path;

    iget-object v0, p0, Landroid/support/v4/widget/ah;->p:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    :goto_0
    iget v0, p0, Landroid/support/v4/widget/ah;->i:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v4/widget/ah;->q:F

    mul-float/2addr v0, v1

    iget-wide v4, p0, Landroid/support/v4/widget/ah;->r:D

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    float-to-double v6, v1

    add-double/2addr v4, v6

    double-to-float v1, v4

    iget-wide v4, p0, Landroid/support/v4/widget/ah;->r:D

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    float-to-double v6, v6

    add-double/2addr v4, v6

    double-to-float v4, v4

    iget-object v5, p0, Landroid/support/v4/widget/ah;->p:Landroid/graphics/Path;

    invoke-virtual {v5, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Landroid/support/v4/widget/ah;->p:Landroid/graphics/Path;

    iget v6, p0, Landroid/support/v4/widget/ah;->s:I

    int-to-float v6, v6

    iget v7, p0, Landroid/support/v4/widget/ah;->q:F

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Landroid/support/v4/widget/ah;->p:Landroid/graphics/Path;

    iget v6, p0, Landroid/support/v4/widget/ah;->s:I

    int-to-float v6, v6

    iget v7, p0, Landroid/support/v4/widget/ah;->q:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget v7, p0, Landroid/support/v4/widget/ah;->t:I

    int-to-float v7, v7

    iget v8, p0, Landroid/support/v4/widget/ah;->q:F

    mul-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Landroid/support/v4/widget/ah;->p:Landroid/graphics/Path;

    sub-float v0, v1, v0

    invoke-virtual {v5, v0, v4}, Landroid/graphics/Path;->offset(FF)V

    iget-object v0, p0, Landroid/support/v4/widget/ah;->p:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Landroid/support/v4/widget/ah;->c:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/ah;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-float v0, v2, v3

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Landroid/support/v4/widget/ah;->p:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/v4/widget/ah;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget v0, p0, Landroid/support/v4/widget/ah;->u:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/ah;->v:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/ah;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/v4/widget/ah;->v:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/ah;->u:I

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v4/widget/ah;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/ah;->p:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0
.end method

.method public final getAlpha()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ah;->u:I

    return v0
.end method

.method public final getCenterRadius()D
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/widget/ah;->r:D

    return-wide v0
.end method

.method public final getEndTrim()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ah;->f:F

    return v0
.end method

.method public final getInsets()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ah;->i:F

    return v0
.end method

.method public final getNextColor()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ah;->j:[I

    invoke-direct {p0}, Landroid/support/v4/widget/ah;->a()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final getRotation()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ah;->g:F

    return v0
.end method

.method public final getStartTrim()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ah;->e:F

    return v0
.end method

.method public final getStartingColor()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ah;->j:[I

    iget v1, p0, Landroid/support/v4/widget/ah;->k:I

    aget v0, v0, v1

    return v0
.end method

.method public final getStartingEndTrim()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ah;->m:F

    return v0
.end method

.method public final getStartingRotation()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ah;->n:F

    return v0
.end method

.method public final getStartingStartTrim()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ah;->l:F

    return v0
.end method

.method public final getStrokeWidth()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ah;->h:F

    return v0
.end method

.method public final goToNextColor()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/widget/ah;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ah;->setColorIndex(I)V

    return-void
.end method

.method public final resetOriginals()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/ah;->l:F

    iput v0, p0, Landroid/support/v4/widget/ah;->m:F

    iput v0, p0, Landroid/support/v4/widget/ah;->n:F

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ah;->setStartTrim(F)V

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ah;->setEndTrim(F)V

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ah;->setRotation(F)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/ah;->u:I

    return-void
.end method

.method public final setArrowDimensions(FF)V
    .locals 1

    float-to-int v0, p1

    iput v0, p0, Landroid/support/v4/widget/ah;->s:I

    float-to-int v0, p2

    iput v0, p0, Landroid/support/v4/widget/ah;->t:I

    return-void
.end method

.method public final setArrowScale(F)V
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ah;->q:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/v4/widget/ah;->q:F

    invoke-direct {p0}, Landroid/support/v4/widget/ah;->b()V

    :cond_0
    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/ah;->w:I

    return-void
.end method

.method public final setCenterRadius(D)V
    .locals 0

    iput-wide p1, p0, Landroid/support/v4/widget/ah;->r:D

    return-void
.end method

.method public final setColor(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/ah;->x:I

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/ah;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-direct {p0}, Landroid/support/v4/widget/ah;->b()V

    return-void
.end method

.method public final setColorIndex(I)V
    .locals 2

    iput p1, p0, Landroid/support/v4/widget/ah;->k:I

    iget-object v0, p0, Landroid/support/v4/widget/ah;->j:[I

    iget v1, p0, Landroid/support/v4/widget/ah;->k:I

    aget v0, v0, v1

    iput v0, p0, Landroid/support/v4/widget/ah;->x:I

    return-void
.end method

.method public final setColors([I)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/widget/ah;->j:[I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ah;->setColorIndex(I)V

    return-void
.end method

.method public final setEndTrim(F)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/ah;->f:F

    invoke-direct {p0}, Landroid/support/v4/widget/ah;->b()V

    return-void
.end method

.method public final setInsets(II)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget-wide v1, p0, Landroid/support/v4/widget/ah;->r:D

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/support/v4/widget/ah;->h:F

    div-float/2addr v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    iput v0, p0, Landroid/support/v4/widget/ah;->i:F

    return-void

    :cond_1
    div-float/2addr v0, v5

    float-to-double v0, v0

    iget-wide v2, p0, Landroid/support/v4/widget/ah;->r:D

    sub-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method public final setRotation(F)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/ah;->g:F

    invoke-direct {p0}, Landroid/support/v4/widget/ah;->b()V

    return-void
.end method

.method public final setShowArrow(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/ah;->o:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/widget/ah;->o:Z

    invoke-direct {p0}, Landroid/support/v4/widget/ah;->b()V

    :cond_0
    return-void
.end method

.method public final setStartTrim(F)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/ah;->e:F

    invoke-direct {p0}, Landroid/support/v4/widget/ah;->b()V

    return-void
.end method

.method public final setStrokeWidth(F)V
    .locals 1

    iput p1, p0, Landroid/support/v4/widget/ah;->h:F

    iget-object v0, p0, Landroid/support/v4/widget/ah;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-direct {p0}, Landroid/support/v4/widget/ah;->b()V

    return-void
.end method

.method public final storeOriginals()V
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/ah;->e:F

    iput v0, p0, Landroid/support/v4/widget/ah;->l:F

    iget v0, p0, Landroid/support/v4/widget/ah;->f:F

    iput v0, p0, Landroid/support/v4/widget/ah;->m:F

    iget v0, p0, Landroid/support/v4/widget/ah;->g:F

    iput v0, p0, Landroid/support/v4/widget/ah;->n:F

    return-void
.end method
