.class final Lcom/vivo/PCTools/MainActivity/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/t;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/PCTools/MainActivity/t;-><init>(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/t;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/t;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v1}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->f(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->a(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;I)V

    return-void
.end method
