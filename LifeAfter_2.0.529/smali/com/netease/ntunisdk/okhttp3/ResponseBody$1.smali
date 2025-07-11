.class Lcom/netease/ntunisdk/okhttp3/ResponseBody$1;
.super Lcom/netease/ntunisdk/okhttp3/ResponseBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/okhttp3/ResponseBody;->create(Lcom/netease/ntunisdk/okhttp3/MediaType;JLcom/netease/ntunisdk/okio/BufferedSource;)Lcom/netease/ntunisdk/okhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lcom/netease/ntunisdk/okio/BufferedSource;

.field final synthetic val$contentLength:J

.field final synthetic val$contentType:Lcom/netease/ntunisdk/okhttp3/MediaType;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/MediaType;JLcom/netease/ntunisdk/okio/BufferedSource;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/ResponseBody$1;->val$contentType:Lcom/netease/ntunisdk/okhttp3/MediaType;

    iput-wide p2, p0, Lcom/netease/ntunisdk/okhttp3/ResponseBody$1;->val$contentLength:J

    iput-object p4, p0, Lcom/netease/ntunisdk/okhttp3/ResponseBody$1;->val$content:Lcom/netease/ntunisdk/okio/BufferedSource;

    invoke-direct {p0}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/netease/ntunisdk/okhttp3/ResponseBody$1;->val$contentLength:J

    return-wide v0
.end method

.method public contentType()Lcom/netease/ntunisdk/okhttp3/MediaType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/ResponseBody$1;->val$contentType:Lcom/netease/ntunisdk/okhttp3/MediaType;

    return-object v0
.end method

.method public source()Lcom/netease/ntunisdk/okio/BufferedSource;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/ResponseBody$1;->val$content:Lcom/netease/ntunisdk/okio/BufferedSource;

    return-object v0
.end method
