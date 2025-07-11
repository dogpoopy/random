.class public Lcom/netease/ntunisdk/okhttp3/Response$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/okhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lcom/netease/ntunisdk/okhttp3/ResponseBody;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field cacheResponse:Lcom/netease/ntunisdk/okhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field code:I

.field handshake:Lcom/netease/ntunisdk/okhttp3/Handshake;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field headers:Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

.field message:Ljava/lang/String;

.field networkResponse:Lcom/netease/ntunisdk/okhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field priorResponse:Lcom/netease/ntunisdk/okhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protocol:Lcom/netease/ntunisdk/okhttp3/Protocol;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field receivedResponseAtMillis:J

.field request:Lcom/netease/ntunisdk/okhttp3/Request;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field sentRequestAtMillis:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->code:I

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->headers:Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    return-void
.end method

.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/Response;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->code:I

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/Response;->request:Lcom/netease/ntunisdk/okhttp3/Request;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->request:Lcom/netease/ntunisdk/okhttp3/Request;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/Response;->protocol:Lcom/netease/ntunisdk/okhttp3/Protocol;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->protocol:Lcom/netease/ntunisdk/okhttp3/Protocol;

    iget v0, p1, Lcom/netease/ntunisdk/okhttp3/Response;->code:I

    iput v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->code:I

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/Response;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->message:Ljava/lang/String;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/Response;->handshake:Lcom/netease/ntunisdk/okhttp3/Handshake;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->handshake:Lcom/netease/ntunisdk/okhttp3/Handshake;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/Response;->headers:Lcom/netease/ntunisdk/okhttp3/Headers;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Headers;->newBuilder()Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->headers:Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/Response;->body:Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->body:Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/Response;->networkResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->networkResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/Response;->cacheResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->cacheResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/Response;->priorResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->priorResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    iget-wide v0, p1, Lcom/netease/ntunisdk/okhttp3/Response;->sentRequestAtMillis:J

    iput-wide v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->sentRequestAtMillis:J

    iget-wide v0, p1, Lcom/netease/ntunisdk/okhttp3/Response;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-void
.end method

.method private checkPriorResponse(Lcom/netease/ntunisdk/okhttp3/Response;)V
    .locals 1

    iget-object p1, p1, Lcom/netease/ntunisdk/okhttp3/Response;->body:Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkSupportResponse(Ljava/lang/String;Lcom/netease/ntunisdk/okhttp3/Response;)V
    .locals 1

    iget-object v0, p2, Lcom/netease/ntunisdk/okhttp3/Response;->body:Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/netease/ntunisdk/okhttp3/Response;->networkResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/netease/ntunisdk/okhttp3/Response;->cacheResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    if-nez v0, :cond_1

    iget-object p2, p2, Lcom/netease/ntunisdk/okhttp3/Response;->priorResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->headers:Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public body(Lcom/netease/ntunisdk/okhttp3/ResponseBody;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;
    .locals 0
    .param p1    # Lcom/netease/ntunisdk/okhttp3/ResponseBody;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->body:Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    return-object p0
.end method

.method public build()Lcom/netease/ntunisdk/okhttp3/Response;
    .locals 3

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->request:Lcom/netease/ntunisdk/okhttp3/Request;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->protocol:Lcom/netease/ntunisdk/okhttp3/Protocol;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->code:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/Response;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/okhttp3/Response;-><init>(Lcom/netease/ntunisdk/okhttp3/Response$Builder;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheResponse(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;
    .locals 1
    .param p1    # Lcom/netease/ntunisdk/okhttp3/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/netease/ntunisdk/okhttp3/Response;)V

    :cond_0
    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->cacheResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    return-object p0
.end method

.method public code(I)Lcom/netease/ntunisdk/okhttp3/Response$Builder;
    .locals 0

    iput p1, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->code:I

    return-object p0
.end method

.method public handshake(Lcom/netease/ntunisdk/okhttp3/Handshake;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;
    .locals 0
    .param p1    # Lcom/netease/ntunisdk/okhttp3/Handshake;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->handshake:Lcom/netease/ntunisdk/okhttp3/Handshake;

    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->headers:Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public headers(Lcom/netease/ntunisdk/okhttp3/Headers;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;
    .locals 0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Headers;->newBuilder()Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->headers:Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public networkResponse(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;
    .locals 1
    .param p1    # Lcom/netease/ntunisdk/okhttp3/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/netease/ntunisdk/okhttp3/Response;)V

    :cond_0
    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->networkResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    return-object p0
.end method

.method public priorResponse(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;
    .locals 0
    .param p1    # Lcom/netease/ntunisdk/okhttp3/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->checkPriorResponse(Lcom/netease/ntunisdk/okhttp3/Response;)V

    :cond_0
    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->priorResponse:Lcom/netease/ntunisdk/okhttp3/Response;

    return-object p0
.end method

.method public protocol(Lcom/netease/ntunisdk/okhttp3/Protocol;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->protocol:Lcom/netease/ntunisdk/okhttp3/Protocol;

    return-object p0
.end method

.method public receivedResponseAtMillis(J)Lcom/netease/ntunisdk/okhttp3/Response$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->headers:Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public request(Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->request:Lcom/netease/ntunisdk/okhttp3/Request;

    return-object p0
.end method

.method public sentRequestAtMillis(J)Lcom/netease/ntunisdk/okhttp3/Response$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->sentRequestAtMillis:J

    return-object p0
.end method
