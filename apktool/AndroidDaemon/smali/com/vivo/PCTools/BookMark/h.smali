.class final Lcom/vivo/PCTools/BookMark/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/BookMark/a;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/BookMark/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/BookMark/h;->a:Lcom/vivo/PCTools/BookMark/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/h;->a:Lcom/vivo/PCTools/BookMark/a;

    iget-object v0, v0, Lcom/vivo/PCTools/BookMark/a;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vivo/PCTools/BookMark/h;->a:Lcom/vivo/PCTools/BookMark/a;

    invoke-static {v1}, Lcom/vivo/PCTools/BookMark/a;->a(Lcom/vivo/PCTools/BookMark/a;)Lcom/vivo/PCTools/BookMark/BookmarkData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
