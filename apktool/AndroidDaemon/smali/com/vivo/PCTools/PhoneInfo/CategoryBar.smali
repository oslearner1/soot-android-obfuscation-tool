.class public Lcom/vivo/PCTools/PhoneInfo/CategoryBar;
.super Landroid/view/View;


# static fields
.field private static a:I


# instance fields
.field private b:Ljava/util/Timer;

.field private c:Ljava/util/ArrayList;

.field private d:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    sput v0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/vivo/PCTools/PhoneInfo/CategoryBar;)V
    .locals 7

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->b:Ljava/util/Timer;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p0}, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->postInvalidate()V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/PhoneInfo/b;

    iget-wide v3, v0, Lcom/vivo/PCTools/PhoneInfo/b;->b:D

    iget-wide v5, v0, Lcom/vivo/PCTools/PhoneInfo/b;->c:D

    add-double/2addr v3, v5

    iput-wide v3, v0, Lcom/vivo/PCTools/PhoneInfo/b;->b:D

    iget-wide v3, v0, Lcom/vivo/PCTools/PhoneInfo/b;->b:D

    iget-wide v5, v0, Lcom/vivo/PCTools/PhoneInfo/b;->a:D

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_0

    iget-wide v3, v0, Lcom/vivo/PCTools/PhoneInfo/b;->a:D

    iput-wide v3, v0, Lcom/vivo/PCTools/PhoneInfo/b;->b:D

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->b:Ljava/util/Timer;

    const-string v0, "CategoryBar"

    const-string v1, "Animation stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public addCategory(I)V
    .locals 2

    new-instance v0, Lcom/vivo/PCTools/PhoneInfo/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vivo/PCTools/PhoneInfo/b;-><init>(Lcom/vivo/PCTools/PhoneInfo/CategoryBar;B)V

    iput p1, v0, Lcom/vivo/PCTools/PhoneInfo/b;->d:I

    iget-object v1, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v2, 0x0

    const v0, 0x7f02000d

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->a:I

    invoke-virtual {p0}, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->getWidth()I

    move-result v0

    sget v1, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->a:I

    shl-int/lit8 v1, v1, 0x1

    sub-int v7, v0, v1

    invoke-virtual {p0}, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->getHeight()I

    move-result v0

    sget v1, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->a:I

    shl-int/lit8 v1, v1, 0x1

    sub-int v8, v0, v1

    if-le v7, v8, :cond_3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080019

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v9, v0

    if-eqz v1, :cond_4

    new-instance v0, Landroid/graphics/Rect;

    sget v3, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->a:I

    sget v5, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->a:I

    add-int/2addr v5, v7

    invoke-direct {v0, v3, v2, v5, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v0

    :goto_1
    sget v0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->a:I

    if-nez v1, :cond_0

    add-int/2addr v0, v8

    :cond_0
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-wide v4, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->d:D

    const-wide/16 v10, 0x0

    cmpl-double v4, v4, v10

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v4, v0

    :cond_1
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    if-eqz v1, :cond_8

    iput v2, v3, Landroid/graphics/Rect;->left:I

    iget v0, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->right:I

    :goto_3
    const v0, 0x7f02000e

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    sget v3, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->a:I

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sget v6, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->a:I

    add-int/2addr v6, v8

    invoke-direct {v0, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v0

    goto :goto_1

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/PhoneInfo/b;

    iget-object v5, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->b:Ljava/util/Timer;

    if-nez v5, :cond_6

    iget-wide v5, v0, Lcom/vivo/PCTools/PhoneInfo/b;->a:D

    :goto_4
    if-eqz v1, :cond_7

    int-to-double v11, v7

    mul-double/2addr v5, v11

    iget-wide v11, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->d:D

    div-double/2addr v5, v11

    double-to-int v5, v5

    if-eqz v5, :cond_1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    add-int v6, v4, v5

    iput v6, v3, Landroid/graphics/Rect;->right:I

    iget v0, v0, Lcom/vivo/PCTools/PhoneInfo/b;->d:I

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v6, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v9

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int v0, v4, v5

    move v4, v0

    goto :goto_2

    :cond_6
    iget-wide v5, v0, Lcom/vivo/PCTools/PhoneInfo/b;->b:D

    goto :goto_4

    :cond_7
    int-to-double v11, v8

    mul-double/2addr v5, v11

    iget-wide v11, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->d:D

    div-double/2addr v5, v11

    double-to-int v5, v5

    if-eqz v5, :cond_1

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v4, v5

    iput v6, v3, Landroid/graphics/Rect;->top:I

    iget v0, v0, Lcom/vivo/PCTools/PhoneInfo/b;->d:I

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v6, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    add-int/2addr v6, v11

    iput v6, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sub-int v0, v4, v5

    move v4, v0

    goto/16 :goto_2

    :cond_8
    iput v2, v3, Landroid/graphics/Rect;->top:I

    iget v0, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3
.end method

.method public setCategoryValue(ID)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/PhoneInfo/b;

    iput-wide p2, v0, Lcom/vivo/PCTools/PhoneInfo/b;->a:D

    invoke-virtual {p0}, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->invalidate()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFullValue(D)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->d:D

    return-void
.end method

.method public declared-synchronized startAnimation()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->b:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "CategoryBar"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->b:Ljava/util/Timer;

    new-instance v1, Lcom/vivo/PCTools/PhoneInfo/a;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/PhoneInfo/a;-><init>(Lcom/vivo/PCTools/PhoneInfo/CategoryBar;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/PhoneInfo/b;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/vivo/PCTools/PhoneInfo/b;->b:D

    iget-wide v2, v0, Lcom/vivo/PCTools/PhoneInfo/b;->a:D

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/vivo/PCTools/PhoneInfo/b;->c:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
