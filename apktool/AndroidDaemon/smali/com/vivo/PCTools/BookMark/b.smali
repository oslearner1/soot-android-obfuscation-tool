.class final Lcom/vivo/PCTools/BookMark/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/StartElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/BookMark/a;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/BookMark/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/BookMark/b;->a:Lcom/vivo/PCTools/BookMark/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final start(Lorg/xml/sax/Attributes;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/b;->a:Lcom/vivo/PCTools/BookMark/a;

    new-instance v1, Lcom/vivo/PCTools/BookMark/BookmarkData;

    invoke-direct {v1}, Lcom/vivo/PCTools/BookMark/BookmarkData;-><init>()V

    invoke-static {v0, v1}, Lcom/vivo/PCTools/BookMark/a;->a(Lcom/vivo/PCTools/BookMark/a;Lcom/vivo/PCTools/BookMark/BookmarkData;)V

    return-void
.end method
