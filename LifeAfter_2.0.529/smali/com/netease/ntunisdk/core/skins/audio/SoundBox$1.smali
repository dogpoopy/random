.class final Lcom/netease/ntunisdk/core/skins/audio/SoundBox$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->b(Landroid/content/res/AssetManager;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/core/skins/audio/SoundBox;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/core/skins/audio/SoundBox;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox$1;->a:Lcom/netease/ntunisdk/core/skins/audio/SoundBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SoundBoxonLoadComplete soundPool="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox$1;->a:Lcom/netease/ntunisdk/core/skins/audio/SoundBox;

    invoke-static {v1}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->a(Lcom/netease/ntunisdk/core/skins/audio/SoundBox;)Landroid/media/SoundPool;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sampleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox$1;->a:Lcom/netease/ntunisdk/core/skins/audio/SoundBox;

    invoke-static {v0}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->a(Lcom/netease/ntunisdk/core/skins/audio/SoundBox;)Landroid/media/SoundPool;

    move-result-object v0

    if-ne p1, v0, :cond_2

    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox$1;->a:Lcom/netease/ntunisdk/core/skins/audio/SoundBox;

    invoke-static {p1}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->b(Lcom/netease/ntunisdk/core/skins/audio/SoundBox;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/core/skins/audio/Sound;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Lcom/netease/ntunisdk/core/skins/audio/Sound;->setLoadSuccess(Z)V

    :cond_2
    return-void
.end method
