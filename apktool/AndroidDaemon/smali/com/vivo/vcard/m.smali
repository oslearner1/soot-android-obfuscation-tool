.class final Lcom/vivo/vcard/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/vcard/VCardEntry$EntryElementIterator;


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>(Lcom/vivo/vcard/VCardEntry;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/vcard/m;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/vcard/VCardEntry;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/vcard/m;-><init>(Lcom/vivo/vcard/VCardEntry;)V

    return-void
.end method


# virtual methods
.method public final getResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/vcard/m;->a:Z

    return v0
.end method

.method public final onElement(Lcom/vivo/vcard/VCardEntry$EntryElement;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/vivo/vcard/VCardEntry$EntryElement;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/vivo/vcard/m;->a:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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
