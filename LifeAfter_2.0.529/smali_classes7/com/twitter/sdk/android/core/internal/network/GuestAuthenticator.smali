.class public Lcom/twitter/sdk/android/core/internal/network/GuestAuthenticator;
.super Ljava/lang/Object;
.source "GuestAuthenticator.java"

# interfaces
.implements Lokhttp3/Authenticator;


# static fields
.field static final MAX_RETRIES:I = 0x2


# instance fields
.field final guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/GuestSessionProvider;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/network/GuestAuthenticator;->guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    return-void
.end method


# virtual methods
.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p2}, Lcom/twitter/sdk/android/core/internal/network/GuestAuthenticator;->reauth(Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method canRetry(Lokhttp3/Response;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 84
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object p1

    if-eqz p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ge v1, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method getExpiredSession(Lokhttp3/Response;)Lcom/twitter/sdk/android/core/GuestSession;
    .locals 4

    .line 63
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object p1

    const-string v0, "Authorization"

    .line 64
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-guest-token"

    .line 65
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 68
    new-instance v1, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    const-string v2, "bearer "

    const-string v3, ""

    .line 69
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bearer"

    invoke-direct {v1, v2, v0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance p1, Lcom/twitter/sdk/android/core/GuestSession;

    invoke-direct {p1, v1}, Lcom/twitter/sdk/android/core/GuestSession;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method reauth(Lokhttp3/Response;)Lokhttp3/Request;
    .locals 3

    .line 50
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/network/GuestAuthenticator;->canRetry(Lokhttp3/Response;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/network/GuestAuthenticator;->guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    .line 52
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/network/GuestAuthenticator;->getExpiredSession(Lokhttp3/Response;)Lcom/twitter/sdk/android/core/GuestSession;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/sdk/android/core/GuestSessionProvider;->refreshCurrentSession(Lcom/twitter/sdk/android/core/GuestSession;)Lcom/twitter/sdk/android/core/GuestSession;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/GuestSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    :goto_0
    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/twitter/sdk/android/core/internal/network/GuestAuthenticator;->resign(Lokhttp3/Request;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method resign(Lokhttp3/Request;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)Lokhttp3/Request;
    .locals 0

    .line 77
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 78
    invoke-static {p1, p2}, Lcom/twitter/sdk/android/core/internal/network/GuestAuthInterceptor;->addAuthHeaders(Lokhttp3/Request$Builder;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V

    .line 79
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method
