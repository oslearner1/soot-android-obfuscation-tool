.class final Lcom/vivo/vcard/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/vcard/VCardEntry$EntryElementIterator;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/vivo/vcard/VCardEntry;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vivo/vcard/l;->a:Ljava/util/List;

    iput p3, p0, Lcom/vivo/vcard/l;->b:I

    return-void
.end method


# virtual methods
.method public final onElement(Lcom/vivo/vcard/VCardEntry$EntryElement;)Z
    .locals 2

    invoke-interface {p1}, Lcom/vivo/vcard/VCardEntry$EntryElement;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/l;->a:Ljava/util/List;

    iget v1, p0, Lcom/vivo/vcard/l;->b:I

    invoke-interface {p1, v0, v1}, Lcom/vivo/vcard/VCardEntry$EntryElement;->constructInsertOperation(Ljava/util/List;I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onElementGroupEnded()V
    .locals 0

    return-void
.end method

.method public final onElementGroupStarted(Lcom/vivo/vcard/VCardEntry$EntryLabel;)V
    .locals 0

    return-void
.end method

.method public final onIterationEnded()V
    .locals 0

    return-void
.end method

.method public final onIterationStarted()V
    .locals 0

    return-void
.end method
