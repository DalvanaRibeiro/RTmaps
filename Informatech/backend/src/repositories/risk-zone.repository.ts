import { AppDataSource } from '../data-source'
import { RiskZone } from '../entities/RiskZone'

/** Encapsula todas as operações TypeORM relacionadas às zonas de risco. */
export class RiskZoneRepository {
  private repository = AppDataSource.getRepository(RiskZone)
  create(data: Partial<RiskZone>) { return this.repository.create(data) }
  async save(zone: RiskZone) {
    const saved = await this.repository.save(zone)
    return this.findById(saved.id)
  }
  findAll() { return this.repository.find({ order: { createdAt: 'DESC' } }) }
  findById(id: string) { return this.repository.findOne({ where: { id } }) }
  remove(zone: RiskZone) { return this.repository.remove(zone) }
}
