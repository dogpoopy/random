.class public Lcom/appsflyer/internal/AFe1pSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/components/network/http/ResponseNetwork;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Body:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/components/network/http/ResponseNetwork<",
        "TBody;>;"
    }
.end annotation


# instance fields
.field final AFInAppEventParameterName:Z

.field final AFInAppEventType:I

.field private final AFKeystoreWrapper:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBody;"
        }
    .end annotation
.end field

.field final valueOf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final values:Lcom/appsflyer/internal/AFe1tSDK;


# direct methods
.method public constructor <init>(Ljava/lang/Object;IZLjava/util/Map;Lcom/appsflyer/internal/AFe1tSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBody;IZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/appsflyer/internal/AFe1tSDK;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1pSDK;->AFKeystoreWrapper:Ljava/lang/Object;

    .line 24
    iput p2, p0, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventType:I

    .line 25
    iput-boolean p3, p0, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventParameterName:Z

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1pSDK;->valueOf:Ljava/util/Map;

    .line 27
    iput-object p5, p0, Lcom/appsflyer/internal/AFe1pSDK;->values:Lcom/appsflyer/internal/AFe1tSDK;

    return-void
.end method


# virtual methods
.method public final AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 79
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFe1pSDK;->getHeaderField(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 80
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    check-cast p1, Lcom/appsflyer/internal/AFe1pSDK;

    .line 104
    iget v1, p0, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventType:I

    iget v2, p1, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventType:I

    if-eq v1, v2, :cond_2

    return v0

    .line 107
    :cond_2
    iget-boolean v1, p0, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventParameterName:Z

    iget-boolean v2, p1, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventParameterName:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 110
    :cond_3
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1pSDK;->AFKeystoreWrapper:Ljava/lang/Object;

    iget-object v2, p1, Lcom/appsflyer/internal/AFe1pSDK;->AFKeystoreWrapper:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 113
    :cond_4
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1pSDK;->valueOf:Ljava/util/Map;

    iget-object v2, p1, Lcom/appsflyer/internal/AFe1pSDK;->valueOf:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1pSDK;->values:Lcom/appsflyer/internal/AFe1tSDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFe1pSDK;->values:Lcom/appsflyer/internal/AFe1tSDK;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v0
.end method

.method public getBody()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBody;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1pSDK;->AFKeystoreWrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1pSDK;->valueOf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iget-object p1, p0, Lcom/appsflyer/internal/AFe1pSDK;->valueOf:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStatusCode()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1pSDK;->AFKeystoreWrapper:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 122
    iget v1, p0, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 123
    iget-boolean v1, p0, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventParameterName:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 124
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1pSDK;->valueOf:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 125
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1pSDK;->values:Lcom/appsflyer/internal/AFe1tSDK;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventParameterName:Z

    return v0
.end method
