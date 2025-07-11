.class final Lcom/netease/ntunisdk/base/RealNameUpdate$b;
.super Ljava/lang/Object;
.source "RealNameUpdate.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/RealNameUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/netease/ntunisdk/base/SdkBase;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;ZLcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$b;->a:Lcom/netease/ntunisdk/base/SdkBase;

    .line 66
    iput-object p2, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$b;->b:Ljava/lang/String;

    .line 67
    iput-boolean p3, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$b;->c:Z

    .line 68
    iput-object p4, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$b;->d:Lcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;

    return-void
.end method


# virtual methods
.method public final ProcessResult(Ljava/lang/String;)V
    .locals 5

    .line 74
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "features md5 api result:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK RealNameUpdate"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "feature url:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$b;->b:Ljava/lang/String;

    new-instance v1, Lcom/netease/ntunisdk/base/RealNameUpdate$a;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$b;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-boolean v3, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$b;->c:Z

    iget-object v4, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$b;->d:Lcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/netease/ntunisdk/base/RealNameUpdate$a;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;ZLcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;)V

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/utils/NetUtil;->wgetIncludeNewLine(Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V

    return-void

    .line 79
    :cond_0
    iget-boolean p1, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$b;->c:Z

    if-eqz p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$b;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$b;->d:Lcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/RealNameUpdate;->a(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;)V

    return-void

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/base/RealNameUpdate$b;->d:Lcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;->updateCallback()V

    return-void
.end method
