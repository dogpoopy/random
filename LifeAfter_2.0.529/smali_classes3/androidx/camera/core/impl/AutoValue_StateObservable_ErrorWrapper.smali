.class final Landroidx/camera/core/impl/AutoValue_StateObservable_ErrorWrapper;
.super Landroidx/camera/core/impl/StateObservable$ErrorWrapper;
.source "AutoValue_StateObservable_ErrorWrapper.java"


# instance fields
.field private final error:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroidx/camera/core/impl/StateObservable$ErrorWrapper;-><init>()V

    const-string v0, "Null error"

    .line 15
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StateObservable_ErrorWrapper;->error:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 38
    :cond_0
    instance-of v0, p1, Landroidx/camera/core/impl/StateObservable$ErrorWrapper;

    if-eqz v0, :cond_1

    .line 39
    check-cast p1, Landroidx/camera/core/impl/StateObservable$ErrorWrapper;

    .line 40
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StateObservable_ErrorWrapper;->error:Ljava/lang/Throwable;

    invoke-virtual {p1}, Landroidx/camera/core/impl/StateObservable$ErrorWrapper;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .line 23
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StateObservable_ErrorWrapper;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 49
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StateObservable_ErrorWrapper;->error:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorWrapper{error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_StateObservable_ErrorWrapper;->error:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
