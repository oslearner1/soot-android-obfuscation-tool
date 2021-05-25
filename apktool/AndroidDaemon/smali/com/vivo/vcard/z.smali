.class public final Lcom/vivo/vcard/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/vcard/VCardInterpreter;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/vivo/vcard/z;->a:I

    return v0
.end method

.method public final onEntryEnded()V
    .locals 1

    iget v0, p0, Lcom/vivo/vcard/z;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/vcard/z;->a:I

    return-void
.end method

.method public final onEntryStarted()V
    .locals 0

    return-void
.end method

.method public final onPropertyCreated(Lcom/vivo/vcard/ai;)V
    .locals 0

    return-void
.end method

.method public final onVCardEnded()V
    .locals 0

    return-void
.end method

.method public final onVCardStarted()V
    .locals 0

    return-void
.end method
