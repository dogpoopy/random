.class public interface abstract Lcom/netease/ntunisdk/okhttp3/CookieJar;
.super Ljava/lang/Object;


# static fields
.field public static final NO_COOKIES:Lcom/netease/ntunisdk/okhttp3/CookieJar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/CookieJar$1;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okhttp3/CookieJar$1;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/CookieJar;->NO_COOKIES:Lcom/netease/ntunisdk/okhttp3/CookieJar;

    return-void
.end method


# virtual methods
.method public abstract loadForRequest(Lcom/netease/ntunisdk/okhttp3/HttpUrl;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/okhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/Cookie;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveFromResponse(Lcom/netease/ntunisdk/okhttp3/HttpUrl;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/okhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/Cookie;",
            ">;)V"
        }
    .end annotation
.end method
