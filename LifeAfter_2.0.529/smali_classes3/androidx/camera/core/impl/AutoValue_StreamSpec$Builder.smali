.class final Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;
.super Landroidx/camera/core/impl/StreamSpec$Builder;
.source "AutoValue_StreamSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/AutoValue_StreamSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private dynamicRange:Landroidx/camera/core/DynamicRange;

.field private expectedFrameRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private implementationOptions:Landroidx/camera/core/impl/Config;

.field private resolution:Landroid/util/Size;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Landroidx/camera/core/impl/StreamSpec$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroidx/camera/core/impl/StreamSpec;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Landroidx/camera/core/impl/StreamSpec$Builder;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->resolution:Landroid/util/Size;

    .line 110
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->dynamicRange:Landroidx/camera/core/DynamicRange;

    .line 111
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getExpectedFrameRateRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->expectedFrameRateRange:Landroid/util/Range;

    .line 112
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->implementationOptions:Landroidx/camera/core/impl/Config;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/AutoValue_StreamSpec$1;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;-><init>(Landroidx/camera/core/impl/StreamSpec;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/core/impl/StreamSpec;
    .locals 8

    .line 146
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->resolution:Landroid/util/Size;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " resolution"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->dynamicRange:Landroidx/camera/core/DynamicRange;

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dynamicRange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    :cond_1
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->expectedFrameRateRange:Landroid/util/Range;

    if-nez v0, :cond_2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expectedFrameRateRange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    new-instance v0, Landroidx/camera/core/impl/AutoValue_StreamSpec;

    iget-object v3, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->resolution:Landroid/util/Size;

    iget-object v4, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->dynamicRange:Landroidx/camera/core/DynamicRange;

    iget-object v5, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->expectedFrameRateRange:Landroid/util/Range;

    iget-object v6, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->implementationOptions:Landroidx/camera/core/impl/Config;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/camera/core/impl/AutoValue_StreamSpec;-><init>(Landroid/util/Size;Landroidx/camera/core/DynamicRange;Landroid/util/Range;Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/AutoValue_StreamSpec$1;)V

    return-object v0

    .line 156
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDynamicRange(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 1

    const-string v0, "Null dynamicRange"

    .line 125
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->dynamicRange:Landroidx/camera/core/DynamicRange;

    return-object p0
.end method

.method public setExpectedFrameRateRange(Landroid/util/Range;)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/camera/core/impl/StreamSpec$Builder;"
        }
    .end annotation

    const-string v0, "Null expectedFrameRateRange"

    .line 133
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->expectedFrameRateRange:Landroid/util/Range;

    return-object p0
.end method

.method public setImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 0

    .line 140
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->implementationOptions:Landroidx/camera/core/impl/Config;

    return-object p0
.end method

.method public setResolution(Landroid/util/Size;)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 1

    const-string v0, "Null resolution"

    .line 117
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->resolution:Landroid/util/Size;

    return-object p0
.end method
