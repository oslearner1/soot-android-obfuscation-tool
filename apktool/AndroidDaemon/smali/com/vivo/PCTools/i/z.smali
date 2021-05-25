.class final Lcom/vivo/PCTools/i/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/StartElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/i/h;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/i/h;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/i/z;->a:Lcom/vivo/PCTools/i/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final start(Lorg/xml/sax/Attributes;)V
    .locals 3

    sget-object v0, Lcom/vivo/PCTools/i/b;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/vivo/PCTools/i/z;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v2, v0, v1}, Lcom/vivo/PCTools/i/h;->d(Lcom/vivo/PCTools/i/h;J)J

    move-result-wide v0

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/i/b;->k:Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vivo/PCTools/i/z;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v1, v0}, Lcom/vivo/PCTools/i/h;->a(Lcom/vivo/PCTools/i/h;Landroid/net/Uri;)Z

    return-void
.end method
