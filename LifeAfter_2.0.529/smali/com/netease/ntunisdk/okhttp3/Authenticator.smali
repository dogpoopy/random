.class public interface abstract Lcom/netease/ntunisdk/okhttp3/Authenticator;
.super Ljava/lang/Object;


# static fields
.field public static final NONE:Lcom/netease/ntunisdk/okhttp3/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/Authenticator$1;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okhttp3/Authenticator$1;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/Authenticator;->NONE:Lcom/netease/ntunisdk/okhttp3/Authenticator;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lcom/netease/ntunisdk/okhttp3/Route;Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Request;
    .param p1    # Lcom/netease/ntunisdk/okhttp3/Route;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
