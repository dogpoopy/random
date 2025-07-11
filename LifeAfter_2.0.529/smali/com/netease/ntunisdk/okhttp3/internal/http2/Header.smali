.class public final Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/okhttp3/internal/http2/Header$Listener;
    }
.end annotation


# static fields
.field public static final PSEUDO_PREFIX:Lcom/netease/ntunisdk/okio/ByteString;

.field public static final RESPONSE_STATUS:Lcom/netease/ntunisdk/okio/ByteString;

.field public static final RESPONSE_STATUS_UTF8:Ljava/lang/String; = ":status"

.field public static final TARGET_AUTHORITY:Lcom/netease/ntunisdk/okio/ByteString;

.field public static final TARGET_AUTHORITY_UTF8:Ljava/lang/String; = ":authority"

.field public static final TARGET_METHOD:Lcom/netease/ntunisdk/okio/ByteString;

.field public static final TARGET_METHOD_UTF8:Ljava/lang/String; = ":method"

.field public static final TARGET_PATH:Lcom/netease/ntunisdk/okio/ByteString;

.field public static final TARGET_PATH_UTF8:Ljava/lang/String; = ":path"

.field public static final TARGET_SCHEME:Lcom/netease/ntunisdk/okio/ByteString;

.field public static final TARGET_SCHEME_UTF8:Ljava/lang/String; = ":scheme"


# instance fields
.field final hpackSize:I

.field public final name:Lcom/netease/ntunisdk/okio/ByteString;

.field public final value:Lcom/netease/ntunisdk/okio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":"

    invoke-static {v0}, Lcom/netease/ntunisdk/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;->PSEUDO_PREFIX:Lcom/netease/ntunisdk/okio/ByteString;

    const-string v0, ":status"

    invoke-static {v0}, Lcom/netease/ntunisdk/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;->RESPONSE_STATUS:Lcom/netease/ntunisdk/okio/ByteString;

    const-string v0, ":method"

    invoke-static {v0}, Lcom/netease/ntunisdk/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;->TARGET_METHOD:Lcom/netease/ntunisdk/okio/ByteString;

    const-string v0, ":path"

    invoke-static {v0}, Lcom/netease/ntunisdk/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;->TARGET_PATH:Lcom/netease/ntunisdk/okio/ByteString;

    const-string v0, ":scheme"

    invoke-static {v0}, Lcom/netease/ntunisdk/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;->TARGET_SCHEME:Lcom/netease/ntunisdk/okio/ByteString;

    const-string v0, ":authority"

    invoke-static {v0}, Lcom/netease/ntunisdk/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lcom/netease/ntunisdk/okio/ByteString;

    return-void
.end method

.method public constructor <init>(Lcom/netease/ntunisdk/okio/ByteString;Lcom/netease/ntunisdk/okio/ByteString;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;->name:Lcom/netease/ntunisdk/okio/ByteString;

    iput-object p2, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;->value:Lcom/netease/ntunisdk/okio/ByteString;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okio/ByteString;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okio/ByteString;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;->hpackSize:I

    return-void
.end method

.method public constructor <init>(Lcom/netease/ntunisdk/okio/ByteString;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lcom/netease/ntunisdk/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;-><init>(Lcom/netease/ntunisdk/okio/ByteString;Lcom/netease/ntunisdk/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/netease/ntunisdk/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object p1

    invoke-static {p2}, Lcom/netease/ntunisdk/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/ByteString;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;-><init>(Lcom/netease/ntunisdk/okio/ByteString;Lcom/netease/ntunisdk/okio/ByteString;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;->name:Lcom/netease/ntunisdk/okio/ByteString;

    iget-object v2, p1, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;->name:Lcom/netease/ntunisdk/okio/ByteString;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;->value:Lcom/netease/ntunisdk/okio/ByteString;

    iget-object p1, p1, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;->value:Lcom/netease/ntunisdk/okio/ByteString;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;->name:Lcom/netease/ntunisdk/okio/ByteString;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/ByteString;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;->value:Lcom/netease/ntunisdk/okio/ByteString;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;->name:Lcom/netease/ntunisdk/okio/ByteString;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Header;->value:Lcom/netease/ntunisdk/okio/ByteString;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
