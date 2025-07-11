.class final Lcom/appsflyer/internal/AFc1qSDK$3;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFc1qSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1aSDK;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/AFa1aSDK;

.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1qSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFc1qSDK;Lcom/appsflyer/internal/AFa1aSDK;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/appsflyer/internal/AFc1qSDK$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1qSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFc1qSDK$3;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFa1aSDK;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "type"

    const-string p2, "unhashed"

    .line 126
    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object p1, p0, Lcom/appsflyer/internal/AFc1qSDK$3;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFa1aSDK;

    .line 1028
    iget-object p1, p1, Lcom/appsflyer/internal/AFa1aSDK;->valueOf:Ljava/lang/String;

    const-string p2, "value"

    .line 127
    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
