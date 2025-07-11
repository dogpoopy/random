.class public final Lcom/appsflyer/internal/AFb1kSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public AFInAppEventParameterName:Ljava/lang/String;

.field AFInAppEventType:Ljava/lang/String;

.field public AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1bSDK;

.field public valueOf:Ljava/lang/String;

.field private values:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lcom/appsflyer/internal/AFe1bSDK;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1kSDK;->valueOf:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/appsflyer/internal/AFb1kSDK;->values:[B

    .line 34
    iput-object p3, p0, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventType:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/appsflyer/internal/AFb1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1bSDK;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 7

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/Scanner;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 49
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 50
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url="

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_1

    .line 52
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsflyer/internal/AFb1kSDK;->valueOf:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v3, "version="

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_2

    const/16 v3, 0x8

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventType:Ljava/lang/String;

    const-string v2, "^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$"

    .line 55
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventType:Ljava/lang/String;

    .line 58
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    .line 60
    invoke-virtual {v2, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 61
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    const-string v3, "data="

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x5

    if-eqz v3, :cond_4

    .line 64
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-gt p1, v4, :cond_3

    const/16 v3, 0xb

    if-ge v1, v3, :cond_3

    .line 67
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-static {v2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/appsflyer/internal/AFb1kSDK;->values:[B

    goto :goto_0

    :cond_4
    const-string v3, "type="

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 71
    :try_start_0
    invoke-static {v2}, Lcom/appsflyer/internal/AFe1bSDK;->valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFe1bSDK;

    move-result-object v3

    iput-object v3, p0, Lcom/appsflyer/internal/AFb1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1bSDK;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .line 73
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CACHE: Unknown task type: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 77
    :cond_5
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    return-void
.end method


# virtual methods
.method public final AFInAppEventType()[B
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1kSDK;->values:[B

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 115
    :cond_1
    check-cast p1, Lcom/appsflyer/internal/AFb1kSDK;

    .line 116
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventType:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventType:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1kSDK;->values:[B

    iget-object v3, p1, Lcom/appsflyer/internal/AFb1kSDK;->values:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 122
    :cond_4
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1kSDK;->valueOf:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/appsflyer/internal/AFb1kSDK;->valueOf:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/appsflyer/internal/AFb1kSDK;->valueOf:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 125
    :cond_6
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventParameterName:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventParameterName:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    .line 128
    :cond_8
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1bSDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFb1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1bSDK;

    if-ne v2, p1, :cond_9

    return v0

    :cond_9
    :goto_3
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventType:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 134
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1kSDK;->values:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 135
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1kSDK;->valueOf:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 136
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventParameterName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 137
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1bSDK;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method
