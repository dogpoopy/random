.class public final Lcom/netease/ntunisdk/okhttp3/FormBody;
.super Lcom/netease/ntunisdk/okhttp3/RequestBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/okhttp3/FormBody$Builder;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE:Lcom/netease/ntunisdk/okhttp3/MediaType;


# instance fields
.field private final encodedNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final encodedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/MediaType;->get(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/FormBody;->CONTENT_TYPE:Lcom/netease/ntunisdk/okhttp3/MediaType;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/netease/ntunisdk/okhttp3/RequestBody;-><init>()V

    invoke-static {p1}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-static {p2}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/FormBody;->encodedValues:Ljava/util/List;

    return-void
.end method

.method private writeOrCountBytes(Lcom/netease/ntunisdk/okio/BufferedSink;Z)J
    .locals 3
    .param p1    # Lcom/netease/ntunisdk/okio/BufferedSink;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    new-instance p1, Lcom/netease/ntunisdk/okio/Buffer;

    invoke-direct {p1}, Lcom/netease/ntunisdk/okio/Buffer;-><init>()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/netease/ntunisdk/okio/BufferedSink;->buffer()Lcom/netease/ntunisdk/okio/Buffer;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    if-lez v0, :cond_1

    const/16 v2, 0x26

    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/okio/Buffer;->writeByte(I)Lcom/netease/ntunisdk/okio/Buffer;

    :cond_1
    iget-object v2, p0, Lcom/netease/ntunisdk/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/Buffer;

    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/okio/Buffer;->writeByte(I)Lcom/netease/ntunisdk/okio/Buffer;

    iget-object v2, p0, Lcom/netease/ntunisdk/okhttp3/FormBody;->encodedValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/Buffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okio/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okio/Buffer;->clear()V

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/okhttp3/FormBody;->writeOrCountBytes(Lcom/netease/ntunisdk/okio/BufferedSink;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/netease/ntunisdk/okhttp3/MediaType;
    .locals 1

    sget-object v0, Lcom/netease/ntunisdk/okhttp3/FormBody;->CONTENT_TYPE:Lcom/netease/ntunisdk/okhttp3/MediaType;

    return-object v0
.end method

.method public encodedName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public encodedValue(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/FormBody;->encodedValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public name(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/okhttp3/FormBody;->encodedName(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public value(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/okhttp3/FormBody;->encodedValue(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lcom/netease/ntunisdk/okio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/okhttp3/FormBody;->writeOrCountBytes(Lcom/netease/ntunisdk/okio/BufferedSink;Z)J

    return-void
.end method
