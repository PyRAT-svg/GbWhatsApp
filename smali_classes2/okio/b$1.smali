.class final Lokio/b$1;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/b;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokio/b;


# direct methods
.method constructor <init>(Lokio/b;)V
    .locals 0

    iput-object p1, p0, Lokio/b$1;->a:Lokio/b;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lokio/b$1;->a:Lokio/b;

    invoke-virtual {v0}, Lokio/b;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Lokio/b$1;->a:Lokio/b;

    iget-boolean v0, v0, Lokio/b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/b$1;->a:Lokio/b;

    invoke-virtual {v0}, Lokio/b;->flush()V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokio/b$1;->a:Lokio/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(I)V
    .locals 1

    iget-object v0, p0, Lokio/b$1;->a:Lokio/b;

    iget-boolean v0, v0, Lokio/b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/b$1;->a:Lokio/b;

    iget-object v0, v0, Lokio/b;->a:Lokio/Buffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    iget-object p1, p0, Lokio/b$1;->a:Lokio/b;

    invoke-virtual {p1}, Lokio/b;->emitCompleteSegments()Lokio/BufferedSink;

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write([BII)V
    .locals 1

    iget-object v0, p0, Lokio/b$1;->a:Lokio/b;

    iget-boolean v0, v0, Lokio/b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/b$1;->a:Lokio/b;

    iget-object v0, v0, Lokio/b;->a:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    iget-object p1, p0, Lokio/b$1;->a:Lokio/b;

    invoke-virtual {p1}, Lokio/b;->emitCompleteSegments()Lokio/BufferedSink;

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
