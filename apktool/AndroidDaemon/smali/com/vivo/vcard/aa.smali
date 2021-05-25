.class public abstract Lcom/vivo/vcard/aa;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addInterpreter(Lcom/vivo/vcard/VCardInterpreter;)V
.end method

.method public abstract cancel()V
.end method

.method public abstract parse(Ljava/io/InputStream;)V
.end method

.method public parse(Ljava/io/InputStream;Lcom/vivo/vcard/VCardInterpreter;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/vivo/vcard/aa;->addInterpreter(Lcom/vivo/vcard/VCardInterpreter;)V

    invoke-virtual {p0, p1}, Lcom/vivo/vcard/aa;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method public abstract parseOne(Ljava/io/InputStream;)V
.end method
