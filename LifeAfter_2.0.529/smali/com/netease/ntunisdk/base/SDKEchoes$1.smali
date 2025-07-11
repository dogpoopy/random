.class Lcom/netease/ntunisdk/base/SDKEchoes$1;
.super Ljava/lang/Object;
.source "SDKEchoes.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SDKEchoes;->echo2SA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SDKEchoes;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SDKEchoes;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKEchoes$1;->a:Lcom/netease/ntunisdk/base/SDKEchoes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ProcessResult(Ljava/lang/String;)V
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo2Flatform [ProcessResult]="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mDumpid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/netease/ntunisdk/base/SDKEchoes$1;->a:Lcom/netease/ntunisdk/base/SDKEchoes;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/SDKEchoes;->a(Lcom/netease/ntunisdk/base/SDKEchoes;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SDKEchoes"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
